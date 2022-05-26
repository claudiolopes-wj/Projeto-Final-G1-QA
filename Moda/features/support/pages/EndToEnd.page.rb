class EndToEndPage < Methods
    
    include Capybara::DSL

    def CreateAccount()
        ClickByTextLink('Assinar', EL['CreateAccountPT'],EL['CreateAccountEN'])
        password = SecureRandom.alphanumeric(20) + '0*'
        Fill(EL['nameAccount'], Faker::Name.first_name)
        Fill(EL['lastnameAccount'], Faker::Name.last_name)
        Fill(EL['emailAccount'], Faker::Internet.email)
        Fill(EL['passwordAccount'], password)
        Fill(EL['confirmPasswordAccount'], password)
        ClickButtonByClass('action submit primary')
    end
    
    def ToCheckout()
        #Indo para o checkout
        ClickByTextLink('Assinar', EL['MyCartPT'],EL['MyCartEN'])
        ClickButtonByClass('action primary checkout')

        #Preenchendo o formulário
        Fill(EL['AdressForm'], 'Rua das Oliveiras')
        Fill(EL['NumberForm'], '22')
        Fill(EL['DistrictForm'], 'Vergueiro' )
        Fill(EL['ComplementForm'], 'Apartamento' )
        SelectDropdown("BR")
        SelectDropdown("508")
        Fill(EL['CityForm'],'São Paulo' )
        Fill(EL['PostCodeForm'],'72876‑070' )
        Fill(EL['TelePhoneForm'], Faker::PhoneNumber.cell_phone)
        ClickButtonByClass('button action continue primary')
    end

    def SelectPaymentMethod()
        first(EL['Payment']).click()
        ClickButtonByClass('action primary checkout')
    end

    def AssertMessage()
        ValidateMessage('Assinar', MSG['msgCompletedPurchasePT'], MSG['msgCompletedPurchaseEN'])
    end

end