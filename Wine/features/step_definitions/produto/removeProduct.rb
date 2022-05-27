Dado("busco pelo produto {string} no campo de busca e dou enter para pesquisar e adiciono no carrinho") do |nomeDoProduto|
    @busca.SearchFill(nomeDoProduto)
    @addProduct.ClickProduct
    @addProduct.ClickCart
  end
  
  Dado("clico no icone da sacola") do
    @removeProductPage.ClickBag
  end
  
  Quando("clico no icone remover item e confirmo") do
    @removeProductPage.ClickDelete
  end

  Entao("irei visualizar uma mensagem") do
    @removeProductPage.ValidateMessage
  end