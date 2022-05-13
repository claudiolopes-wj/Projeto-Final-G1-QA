include Capybara::DSL

class CreateAccountPage
    
    def AccessRegistration
        visit('customer/account/create/')
    end

    def Fill(name, lastname, email, password, passwordConfirmation, isNewEmail )
        
        newEmail = email

        if isNewEmail
            newEmail = email + rand(100).to_s + '.com'            
        end
        
        using_wait_time 10 do
            find('input[name="firstname"]').set(name)
            find('input[name="lastname"]').set(lastname)
            find_by_id('email_address').set(newEmail)
            find('input[name="password"]').set(password)
            find('input[name="password_confirmation"]').set(passwordConfirmation)
        end
        
    end

    def Click()
        using_wait_time 10 do
            find_button(class:'action submit primary').click()
        end
    end

    def Assert(messagePT, messageEN)

        isPortuguese  = has_content?('lang="pt"')

        if isPortuguese
            message = messagePT
        else
            message = messageEN
        end

        assert_text(message, wait: 5)
    end

end