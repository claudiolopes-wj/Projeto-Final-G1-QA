#language: pt

@AddFavoritos
Funcionalidade: Adicionar produtos no favoritos
    
    Eu como usuario
    quero acessar o site
    Para adicionar um produto ao favoritos

    @AddProdutoFavoritosLog
    Cenario: Adicionar produto no favoritos logado
        Dado que eu esteja na pagina de login
        E preencho os campos email "davidlima@webjump.com.br" e senha "w3bjump@29" e clico para entrar
        E busco pelo produto "Malhado Simples ocasional" no campo de busca e dou enter para pesquisar e seleciono o produto
        Quando eu clicar para adicionar nos favoritos
        Entao irei visualizar uma determinada mensagem na tela

    @AddProdutoFavoritosDes
    Cenario: Adicionar produto no favoritos deslogado
        Dado que eu esteja na pagina principal
        E busco pelo produto "Malhado Simples ocasional" no campo de busca e dou enter para pesquisar e seleciono o produto
        Quando eu clicar para adicionar nos favoritos
        Entao irei visualizar uma determinada mensagem de erro na tela
