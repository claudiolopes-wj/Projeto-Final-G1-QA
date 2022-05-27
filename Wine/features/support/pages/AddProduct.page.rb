class AddProductPage < Methods

    include Capybara::DSL

    def ClickProduct
        first(".product-image-photo").click()
    end

    def ClickCart
        ClickButtonByClass('action primary tocart')
    end

    def ValidateMessage
        ValidateMessage('Você adicionou Conte Lorenzo Sormani Trebbiano 2018 para o seu carrinho de compras.')
    end
end