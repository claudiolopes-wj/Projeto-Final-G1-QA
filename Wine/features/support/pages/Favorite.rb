class Favorite < Methods

    include Capybara::DSL

    
    def ClickFavorite
        #binding.pry
        first('.product-image-photo').click
        find_link('Adicionar à lista de desejos').hover
        click_link 'Adicionar à lista de desejos'
    end

    def Confirm(message_p)
        ValidateMessage(message_p)
    end

end