class RemoveProductPage < Methods

    def RemoveProduct()
        #binding.pry
        sleep(3)
        find(".minicart-wrapper").click()
        first('.secondary').click()
        ClickButtonByClass("action-primary action-accept")
    end

    def AssertMessage()
        ValidateMessage('Adicionar ao Carrinho', MSG['msgRemoveProductCartPT'], MSG['msgRemoveProductCartEN'])
    end

end