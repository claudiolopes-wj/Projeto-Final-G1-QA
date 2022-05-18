include Capybara::DSL

class SearchProductPage < Methods

    def AcessHome()
        visit('/')
    end

    def FillFields(productName)
        Fill(EL['campoDeBusca'], productName)
    end

    def Search()
        Enter(EL['campoDeBusca'])
    end

    def AssertCss()
        ValidateCss('.product-item')
    end

    def AssertMessage(messagePT, messageEN)
        ValidateMessage('Resultados da busca por', messagePT, messageEN)
    end

end