class SearchProductPage < Methods

    include Capybara::DSL

    def AcessHome()
        visit('/')
    end

    def FillFields(productName)
        Fill(EL['campoDeBusca'], productName)
    end

    def Search()
        find(EL['campoDeBusca']).native.send_keys(:return)
    end

    def AssertCss()
        ValidateCss('.product-item')
    end

    def AssertMessage(messagePT, messageEN)
        ValidateMessage('Resultados da busca por', messagePT, messageEN)
    end

end