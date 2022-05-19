#language: pt


@Adicionar
Funcionalidade: Adicionar produtos no carrinho

    Eu como usuario
    quero acessar o site
    Para adicionar um produto no carrinho

    @AdicionarSucesso
    Cenario: Adicionar produto no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "roni_cost@example.com" e senha "roni_cost3@example.com" e clico para entrar
        E busco pelo produto "Proteus Fitness Jackshirt" no campo de busca e dou enter para pesquisar
        Quando eu selecionar o tamanho "M" e a cor "Blue" e clicar em adicionar no carrinho
        Entao irei visualizar uma mensagem