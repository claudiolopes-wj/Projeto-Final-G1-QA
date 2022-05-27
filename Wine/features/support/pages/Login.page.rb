class Login < Methods

    include Capybara::DSL
    
    def AccessLogin
        visit('customer/account/login/')
    end

    def FillFields(email, password)
        Fill(EL['emailLogin'], email)
        Fill(EL['senhaLogin'], password)
    end

    def ClickButton
        ClickButtonByClass('action login primary')
    end

    def VerifyMessage(message)
        ValidateMessage(message)
    end
end