#language: pt

@Remover
Funcionalidade: Remover produtos no carrinho

    Eu como usuario
    Quero acessar a plataforma
    Para remover um determinado produto do carrinho

    @RemoverLogado
    Cenario: Remover produto no carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "davidlima@webjump.com.br" e senha "w3bjump@29" e clico para entrar
        E busco pelo produto "Casaco Feminino" no campo de busca e seleciono o produto e adiciono no carrinho
        Quando eu clicar na sacola de comprar e remover o produto 
        Entao irei visualizar uma determinada mensagem

    @RemoverDeslogado
    Cenario: Remover produto no carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Casaco Feminino" no campo de busca e seleciono o produto e adiciono no carrinho
        Quando eu clicar na sacola de comprar e remover o produto 
        Entao irei visualizar uma determinada mensagem
