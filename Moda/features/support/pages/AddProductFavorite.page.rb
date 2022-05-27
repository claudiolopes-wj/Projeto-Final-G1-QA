class AddProductFavoritePage < Methods
    
    include Capybara::DSL

    def SelectProduct()
        SelectFirstProduct('.product-image-photo')
    end

    def AddFavorites()
        ClickByTextLink('Adicionar à lista', EL['TextLinkPT'],EL['TextLinkEN'])
    end

    def AssertMessageSuccess()
        ValidateMessage('Minha Lista de Desejos', MSG['msgAddProductFavoriteSuccessPT'], MSG['msgAddProductFavoriteSuccessEN'])
    end
    
    def AssertMessageError()
        ValidateMessage('Login do Cliente', MSG['msgAddProductFavoriteErrorPT'], MSG['msgAddProductFavoriteErrorEN'])
    end
    
end