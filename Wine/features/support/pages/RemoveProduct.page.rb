class RemoveProductPage < Methods

    include Capybara::DSL

    def ClickBag
        sleep 3
        find(".minicart-wrapper").click()
    end

    def ClickDelete
        first('.secondary').click()
        ClickButtonByClass('action-primary action-accept')
    end

    def ValidateMessage
        ValidateMessage('Você não possui nenhum item em seu carrinho de compras.')
    end
end    