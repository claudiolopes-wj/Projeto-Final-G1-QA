class End < Methods

    include Capybara::DSL

    def ClickProduct
        first(".product-image-photo").click()
    end

    def ClickCart
        ClickButtonByClass('action primary tocart')
    end
    
    def ClickShowcart
        sleep 3
        find(".minicart-wrapper").click()
    end
        
    def ClickCheckout
        ClickButtonByClass('action primary checkout')
    end

    def FillCheckout
        find('input[name="street[0]"]').set('Rua das Oliveiras')
        find('input[name="street[1]"]').set('71')
        find('input[name="street[2]"]').set('Paraiso')
        find('input[name="street[3]"]').set('Casa')
        find("option[value='508']").select_option
        find('input[name="city"]').set('São Paulo')
        find('input[name="postcode"]').set('05756-340')
        find('input[name="telephone"]').set('11777777777')
    end

    def ClickNext
        ClickButtonByClass('button action continue primary')
    end

    def ClickPaymentMethods
        sleep 10
        first("input[name='payment[method]']").click
    end

    def ClickFinish
        ClickButtonByClass('action primary checkout')
    end
        
end