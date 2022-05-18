#language: pt

@Busca
Funcionalidade: Realizar uma busca de produtos

    Eu como usuario 
    Quero poder acessar o site 
    Para buscar um determinado produto

    @BuscaValidaLog
    Cenario: Busca Valida Logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "roni_cost@example.com" e senha "roni_cost3@example.com" e clico para entrar
        E busco pelo produto "Proteus Fitness Jackshirt" no campo de busca
        Quando eu der enter para pesquisar 
        Entao irei visualizar o produto na pagina

    @BuscaValidaDes
    Cenario: Busca Valida Deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Proteus Fitness Jackshirt" no campo de busca
        Quando eu der enter para pesquisar
        Entao irei visualizar o produto na pagina

    @BuscaInvalidaLog
    Esquema do Cenario: Busca Invalida logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "roni_cost@example.com" e senha "roni_cost3@example.com" e clico para entrar
        E busco pelo produto "<nomeProduto>" no campo de busca
        Quando eu der enter para pesquisar 
        Entao irei visualizar uma mensagem: "<mensagemPT>", "<mensagemEN>"

    Exemplos: Dados 
    |nomeProduto  |mensagemPT                             |mensagemEN                       |
    |asd          |A sua pesquisa não retornou resultados.|Did you mean                     |
    |masdkeee     |A sua pesquisa não retornou resultados.|Your search returned no results. |


    @BuscaInvalidaDes
    Esquema do Cenario: Busca Invalida Deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "<nomeProduto>" no campo de busca
        Quando eu der enter para pesquisar
        Entao irei visualizar uma mensagem: "<mensagemPT>", "<mensagemEN>"

    Exemplos: Dados 
    |nomeProduto  |mensagemPT                             |mensagemEN                       |
    |asd          |A sua pesquisa não retornou resultados.|Did you mean                     |
    |masdkeee     |A sua pesquisa não retornou resultados.|Your search returned no results. |
