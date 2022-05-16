include Capybara::DSL

class Login

    def AccessLogin
        visit('customer/account/login/')
    end

    def FillFields(email, password)
        find('input[name="login[username]"]').set(email)
        find('input[name="login[password]"]').set(password)
    end

    def ClickButton
        find_button(class:'action login primary').click
    end

    def VerifyMessage(message)
        assert_text(message, wait: 5)
    end




end