Quando("eu clicar na sacola de comprar e remover o produto") do
    @removeProduct.RemoveProduct()
end

Entao("irei visualizar uma determinada mensagem") do
    @removeProduct.AssertMessage()
end