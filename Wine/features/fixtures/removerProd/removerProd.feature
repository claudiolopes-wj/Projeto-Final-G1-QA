#language: pt

@Remover
Funcionalidade: Remover produto do carrinho

    Eu como usuario
    quero acessar o site
    Para remover um produto do carrinho

@RemoverLog
Cenario: Remover produto do carrinho logado
        Dado que eu esteja na pagina de login
        E preencho os campos "comandante83@gmail.com", "Alabama01"
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar e adiciono no carrinho
        E clico no icone da sacola
        Quando clico no icone remover item e confirmo
        Entao irei visualizar uma mensagem "Você não possui nenhum item em seu carrinho de compras."

@RemoverDeslog
Cenario: Remover produto do carrinho deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar e adiciono no carrinho
        E clico no icone da sacola
        Quando clico no icone remover item e confirmo
        Entao irei visualizar uma mensagem "Você não possui nenhum item em seu carrinho de compras."        