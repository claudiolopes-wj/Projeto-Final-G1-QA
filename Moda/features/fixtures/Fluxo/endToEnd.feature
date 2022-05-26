#language: pt

@FluxoEndToEnd

Funcionalidade: Realizar o fluxo End to End

    Eu como usuario 
    Quero realizar o login e fazer uma compra
    para adquirir um produto

    @FluxoCompra
    Cenario: Fluxo End to End de uma compra no site Magnolia
        Dado que eu esteja na pagina principal
        E Realizo o cadastro com sucesso
        E busco pelo produto "Casaco Feminino" no campo de busca e seleciono o produto e adiciono no carrinho
        E clico para ir ao Checkout e escolho o método de envio e preencho os campos do formulário de entrega e clico em pŕoximo
        Quando eu selecionar o método de pagamento por cheque ou dinheiro e clicar em finalizar pedido
        Entao eu devo visualizar uma mensagem que minha compra foi realizada com sucesso