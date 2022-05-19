
class AddProductPage
    
    include Capybara::DSL

    def SelecionarTamanhoCor(tamanho, cor)
        all("div[data-option-tooltip-value='#{tamanho}']")[0].click
        all("div[data-option-label='#{cor}']")[0].click()
        first("#product-item-info_436").click()
    end

    def AssertMessage()
        sleep(10)
        ValidateMessage('Primeiro nome', 'messagePT', 'You added')
    end

end