include Capybara::DSL

class Register

    def AccessPage
    visit ('http://magento.local/')
    end

    def CreateAccount_click
    click_link('Criar conta')
    end

    def InputName(pnome, psobrenome)
    find_by_id('firstname').set pnome
    find_by_id('lastname').set psobrenome
    end

    def ClickNewsletter
    find('input[name="is_subscribed"]').click
    end

    def ClickAllowRemoteShoppingAssistance 
    find('input[name="assistance_allowed_checkbox"]').click
    end

    def InputEmail(password, confirm_password)
    find_by_id('email_address').set(Faker::Internet.email)
    find_by_id('password').set password
    find_by_id('password-confirmation').set confirm_password
    end

    def ClickCreateAccount
    find_button(class:'action submit primary').click()
    end

    def ViewMessage(mensagem)
    assert_text(mensagem, wait:5)
    end
end

