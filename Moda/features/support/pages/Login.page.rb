include Capybara::DSL

class LoginPage

    def AccessLogin
        visit('customer/account/login/')
    end

    def Fill(email, password)
        find('input[name="login[username]"]').set(email)
        find('input[name="login[password]"]').set(password)
    end

    def Click()
        using_wait_time 5 do
            find_button(class:'action login primary').click()
        end
    end

    def Assert(messagePT, messageEN)

        isPortuguese  = has_content?('Senha')

        message = isPortuguese ? messagePT : messageEN
        
        assert_text(message, wait: 5)
    end

end