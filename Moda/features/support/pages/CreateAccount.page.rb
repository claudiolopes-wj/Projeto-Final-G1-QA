
class CreateAccountPage
    include Capybara::DSL

    def AccessRegistration
        visit('customer/account/create/')
    end

    def Fill(name, lastname, email, password, passwordConfirmation)
        
        newEmail = email

        if email.eql? "email"
            newEmail = Faker::Internet.email       
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

        isPortuguese  = has_content?('Primeiro nome')

        message = isPortuguese ? messagePT : messageEN

        assert_text(message, wait: 5)
    end

end