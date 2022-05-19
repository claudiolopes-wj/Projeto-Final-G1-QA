
class CreateAccountPage < Methods
    
    include Capybara::DSL

    def AccessRegistration
        visit('customer/account/create/')
    end

    def FillFields(name, lastname, email, password, passwordConfirmation)
        
        newEmail = email

        if email.eql? "email"
            newEmail = Faker::Internet.email       
        end

        Fill(EL['nameAccount'], name)
        Fill(EL['lastnameAccount'], lastname)
        Fill(EL['lastnameAccount'], lastname)
        Fill(EL['lastnameAccount'], lastname)
        Fill(EL['emailAccount'], newEmail)
        Fill(EL['emailAccount'], newEmail)
        Fill(EL['passwordAccount'], password)
        Fill(EL['confirmPasswordAccount'], passwordConfirmation)
    end

    def ClickButton()
        ClickButtonByClass('action submit primary')
    end

    def AssertMessage(messagePT, messageEN)
        ValidateMessage('Primeiro nome', messagePT, messageEN)
    end

end