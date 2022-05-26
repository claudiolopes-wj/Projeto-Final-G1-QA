Dado("busco pelo produto {string} no campo de busca e dou enter para pesquisar e seleciono o produto") do |nomeDoProduto|
    @searchProduct.FillFields(nomeDoProduto)
    @searchProduct.Search()
    @AddProductFavorite.SelectProduct()
end

Quando("eu clicar para adicionar nos favoritos") do
    @AddProductFavorite.AddFavorites()
end

Entao("irei visualizar uma determinada mensagem na tela") do
    @AddProductFavorite.AssertMessageSuccess()
end

Entao("irei visualizar uma determinada mensagem de erro na tela") do
    @AddProductFavorite.AssertMessageError()
end