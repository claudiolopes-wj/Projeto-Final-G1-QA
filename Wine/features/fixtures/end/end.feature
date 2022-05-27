#language: pt

@TheEnd
Funcionalidade: Realizar fluxo end-to-end de compra no site

    Eu como usuario
    Quero acessar o site
    Para comprar um produto

    @End
    Cenario: Comprar produto
        Dado que eu esteja na pagina de login
        E preencho os campos "webjump01@mailinator.com", "Pa$$w0rd!" e clico em entrar
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        E clico em adicionar no carrinho
        E clico no icone da sacola e vou para o checkout
        E preencho os campos de foormulario de entrega e clico em Próximo
        E seleciono um meio de pagamento
        Quando clicar em Finalizar Pedido
        Entao irei visualizar uma mensagem "Obrigado por sua compra!"

