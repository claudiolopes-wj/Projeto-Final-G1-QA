Dado("clico em adicionar no carrinho") do
  @addProduct.ClickProduct
  @addProduct.ClickCart
end

Dado("clico no icone da sacola e vou para o checkout") do
  @end.ClickShowcart
  @end.ClickCheckout
end

Dado("preencho os campos de foormulario de entrega e clico em Próximo") do
  @end.FillCheckout
  @end.ClickNext
end

Dado("seleciono um meio de pagamento") do
  @end.ClickPaymentMethods
end

Quando("clicar em Finalizar Pedido") do
  @end.ClickFinish
end