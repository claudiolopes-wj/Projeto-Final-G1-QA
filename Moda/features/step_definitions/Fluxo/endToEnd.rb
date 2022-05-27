Dado("Realizo o cadastro com sucesso") do
    @endToEnd.CreateAccount()
end
  
Dado("clico para ir ao Checkout e escolho o método de envio e preencho os campos do formulário de entrega e clico em pŕoximo") do
    @endToEnd.ToCheckout()
end
  
Quando("eu selecionar o método de pagamento por cheque ou dinheiro e clicar em finalizar pedido") do
    @endToEnd.SelectPaymentMethod()
end
  
Entao("eu devo visualizar uma mensagem que minha compra foi realizada com sucesso") do
    @endToEnd.AssertMessage()
end