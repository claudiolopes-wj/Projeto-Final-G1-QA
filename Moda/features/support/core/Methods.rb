include Capybara::DSL
include RSpec::Matchers

class Methods

    #Método para buscar um determinado elemento e inserir um valor
    begin
        def Fill(element, value)
            find(element).set(value)
        end

    rescue SomeExceptionClass => error
        raise "Elemento: #{element} não encontrado, #{error}"
    end

    #Método para validar um determinado css
    begin
        def ValidateCss(element)
            expect(page).to have_css(element, visible: true)
        end
    end

    #Método para validar a mensagem em Português e em Inglês
    begin
        def ValidateMessage(elementLanguage, messagePT, messageEN)
            isPortuguese  = has_content?(elementLanguage)
            
            message =  isPortuguese ? messagePT : messageEN
            
            assert_text(message, wait: 5)
        end

        rescue SomeExceptionClass => error
            raise "Ops, #{error}"
    end

    #Método para realizar um enter em determinado campo
    begin
        def Enter(element)
            find(element).native.send_keys(:return)
        end
    end

end

