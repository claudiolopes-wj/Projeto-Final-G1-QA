include Capybara::DSL

class LoginPage < Methods

    def AccessLogin
        visit('customer/account/login/')
    end

    def FillFields(email, password)
        Fill(EL['emailLogin'], email)
        Fill(EL['senhaLogin'], password)
    end

    def Click()
        find_button(class:'action login primary').click()
    end

    def Assert(messagePT, messageEN)
        message = ValidateMessage('senha') ? messagePT : messageEN
        assert_text(message, wait: 5)
    end

end