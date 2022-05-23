
Dado("busco pelo produto {string} no campo de busca e dou enter para pesquisar") do |nomeDoProduto|
    @busca.SearchFill(nomeDoProduto)
    end

Quando("eu clicar em adicionar no carrinho") do
    @addProduct.ClickProduct
    @addProduct.ClickCart
  end
  
Entao("irei visualizar uma mensagem") do
    @busca.ValidateMessage
end