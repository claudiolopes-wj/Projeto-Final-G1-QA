
class AddProductCartPage < Methods
    
    include Capybara::DSL

    def SelecionarProduto()
        first(".product-image-photo").click()
        ClickButtonByClass("action primary tocart")
    end

    def AssertMessage()
        ValidateMessage('Primeiro nome', MSG['msgAddProductCartPT'], MSG['msgAddProductCartEN'])
    end

end