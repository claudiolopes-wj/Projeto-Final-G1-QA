searchProduct = SearchProductPage.new
addProduct = AddProductPage.new

Dado("busco pelo produto {string} no campo de busca e dou enter para pesquisar") do |nomeDoProduto|
    searchProduct.FillFields(nomeDoProduto)
    searchProduct.Search()
end
  
Quando("eu selecionar o tamanho {string} e a cor {string} e clicar em adicionar no carrinho") do |tamanho, cor|
    addProduct.SelecionarTamanhoCor(tamanho,cor)
end
  
Entao("irei visualizar uma mensagem") do
   
end