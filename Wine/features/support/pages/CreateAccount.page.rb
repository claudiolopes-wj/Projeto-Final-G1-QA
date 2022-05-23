include Capybara::DSL

class CreateAccount

    def fill_form
        fill_fields('emailRegister')
        fill_fields('pass')
    end

    def AccessCreateAccount
        visit('customer/account/create/')
    end 

    def FillFields(name, lastname, email, password, passwordconfirmation)
        newemail = email
        if email.eql? "true"
            newemail = Faker::Internet.email
        end
        find('input[name="firstname"]').set(name)
        find('input[name="lastname"]').set(lastname)
        find_by_id('email_address').set(newemail)
        find('input[name="password"]').set(password)
        find('input[name="password_confirmation"]').set(passwordconfirmation)
    end
    
    def ClickButton
        find_button(class:'action submit primary').click
    end    

    def VerifyMessage(message)
        assert_text(message, wait: 5)
    end

end
