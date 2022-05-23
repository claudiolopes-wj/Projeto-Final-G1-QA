#language: pt

@Adicionar
Funcionalidade: Adicionar produto no carrinho

    Eu como usuario
    quero acessar o site
    Para adicionar um produto no carrinho

    @AdicionarSucesso
    Cenario: Adicionar produto no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos "comandante83@gmail.com", "Alabama01"
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar no carrinho
        Entao irei visualizar uma mensagem "Você adicionou Conte Lorenzo Sormani Trebbiano 2018 para o seu carrinho de compras."

    @AdicionarSucessoDeslog
    Cenario: Adicionar produto no carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar no carrinho
        Entao irei visualizar uma mensagem "Você adicionou Conte Lorenzo Sormani Trebbiano 2018 para o seu carrinho de compras."

    @AdicionarSucessoMais
    Cenario: Adicionar dois produtos no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos "comandante83@gmail.com", "Alabama01"
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        E busco pelo produto "Faustino Rivero" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar no carrinho
        Entao irei visualizar uma mensagem "Você adicionou Conte Lorenzo Sormani Trebbiano 2018 para o seu carrinho de compras."

    @AdicionarSucessoMaisDeslog
    Cenario: Adicionar dois produtos no carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        E busco pelo produto "Faustino Rivero" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar no carrinho
        Entao irei visualizar uma mensagem "Você adicionou Conte Lorenzo Sormani Trebbiano 2018 para o seu carrinho de compras."
        