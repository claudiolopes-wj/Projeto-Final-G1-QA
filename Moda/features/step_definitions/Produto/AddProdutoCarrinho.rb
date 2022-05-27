
Dado("busco pelo produto {string} no campo de busca e dou enter para pesquisar") do |nomeDoProduto|
    @searchProduct.FillFields(nomeDoProduto)
    @searchProduct.Search()
end
  
Dado("busco pelo produto {string} no campo de busca e seleciono o produto e adiciono no carrinho") do |nomeDoProduto|
    @searchProduct.FillFields(nomeDoProduto)
    @searchProduct.Search()
    @addProductCart.SelecionarProduto()
end

Quando("eu selecionar o produto e adicionar no carrinho") do
    @addProductCart.SelecionarProduto()
end

Entao("irei visualizar uma mensagem") do
   @addProductCart.AssertMessage()
end