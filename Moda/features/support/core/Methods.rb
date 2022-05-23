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

    def ClickButtonByClass(element)
            find_button(class:element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

end

