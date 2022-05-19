

class LoginPage < Methods

    include Capybara::DSL
    
    def AccessLogin
        visit('customer/account/login/')
    end

    def FillFields(email, password)
        Fill(EL['emailLogin'], email)
        Fill(EL['passwordLogin'], password)
    end

    def ClickButton()
        ClickButtonByClass('action login primary')
    end

    def AssertMessage(messagePT, messageEN)
        ValidateMessage('senha', messagePT, messageEN)
    end

end