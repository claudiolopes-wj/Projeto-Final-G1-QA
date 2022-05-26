#language: pt

@AdicionarCarrinho
Funcionalidade: Adicionar produtos no carrinho

    Eu como usuario
    quero acessar o site
    Para adicionar um produto no carrinho

    @AddCarrinhoLog
    Cenario: Adicionar produto no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "davidlima@webjump.com.br" e senha "w3bjump@29" e clico para entrar
        E busco pelo produto "Casaco Feminino" no campo de busca e dou enter para pesquisar
        Quando eu selecionar o produto e adicionar no carrinho
        Entao irei visualizar uma mensagem

    @AddCarrinhoDes
    Cenario: Adicionar produto no carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Casaco Feminino" no campo de busca e dou enter para pesquisar
        Quando eu selecionar o produto e adicionar no carrinho
        Entao irei visualizar uma mensagem

    @AddCarrinhoTipoLog
    Cenario: Adicionar mais de um tipo de produto no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "davidlima@webjump.com.br" e senha "w3bjump@29" e clico para entrar
        E busco pelo produto "Casaco Feminino" no campo de busca e seleciono o produto e adiciono no carrinho
        E busco pelo produto "Kit Bolsa e Carteira da Gucci" no campo de busca e dou enter para pesquisar
        Quando eu selecionar o produto e adicionar no carrinho
        Entao irei visualizar uma mensagem

    @AddCarrinhoTipoDes
    Cenario: Adicionar mais de um tipo de produto no carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Casaco Feminino" no campo de busca e seleciono o produto e adiciono no carrinho
        E busco pelo produto "Kit Bolsa e Carteira da Gucci" no campo de busca e dou enter para pesquisar
        Quando eu selecionar o produto e adicionar no carrinho
        Entao irei visualizar uma mensagem
