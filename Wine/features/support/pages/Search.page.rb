class Search < Methods

    include Capybara::DSL

    def SearchFill(name)
        Fill(EL['campoDeBusca'], name)
        find(EL['campoDeBusca']).native.send_keys(:return)
    end

    def ViewProduct
        ValidateMessage('Conte Lorenzo Sormani Trebbiano 2018')
    end

    def AccessHome
        visit('/')
    end
end