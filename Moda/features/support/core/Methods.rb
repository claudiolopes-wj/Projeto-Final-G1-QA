class Methods

    include Capybara::DSL
    include RSpec::Matchers

    #Método para buscar um determinado elemento e inserir um valor
    def Fill(element, value)
        find(element).set(value)
    rescue SomeExceptionClass => error
        raise "Elemento: #{element} não encontrado, #{error}"
    end

    #Método para validar um determinado css
    def ValidateCss(element)
        expect(page).to have_css(element, visible: true)
    rescue SomeExceptionClass => error
        raise "Elemento: #{element} não encontrado, #{error}"
    end

    #Método para validar a mensagem em Português e em Inglês
    def ValidateMessage(elementLanguage, messagePT, messageEN)
        isPortuguese  = has_content?(elementLanguage)
            
        message =  isPortuguese ? messagePT : messageEN
        assert_text(message, wait: 5)
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

    #Método responsável por Clicar em um botão pela classe
    def ClickButtonByClass(element)
            find_button(class:element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

    #Método responsável por selecionar o primeiro produto da página
    def SelectFirstProduct(element)
        first(element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

    #Método responsável por clicar em um link pelo texto
    def ClickByTextLink(elementLanguage, textPT, textEN)
        isPortuguese  = has_content?(elementLanguage)
            
        text =  isPortuguese ? textPT : textEN
        find_link(text).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

    def SelectDropdown(valueToSelect)
        find("option[value='#{valueToSelect}']").select_option
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

end

