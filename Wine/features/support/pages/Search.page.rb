include Capybara::DSL

class Search

    def SearchFill(name)
        find('#search').set name
        find('#search').native.send_keys(:return)
    end

    def ViewProduct
        assert_text('Proteus Fitness Jackshirt')
    end

    def AccessHome
        visit('/')
    end
end