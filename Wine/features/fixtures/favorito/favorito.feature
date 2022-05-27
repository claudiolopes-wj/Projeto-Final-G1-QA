#language: pt

@Favorito
Funcionalidade: Adicionar produto aos favoritos

    Eu como usuario
    Quero acessar o site
    Para adicionar um produto aos favoritos

    @FavoritoSucesso
    Cenario: Adicionar produto aos favoritos logado
        Dado que eu esteja na pagina de login
        E preencho os campos "comandante83@gmail.com", "Alabama01" e clico em entrar
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar a lista de desejos
        Entao irei visualizar a mensagem "Conte Lorenzo Sormani Trebbiano 2018 foi adicionado à sua lista de desejos."

    @FavoritoDeslog
    Cenario: Adicionar produto aos favoritos deslogado 
        Dado que eu esteja na pagina principal
        E busco pelo produto "Conte Lorenzo" no campo de busca e dou enter para pesquisar
        Quando eu clicar em adicionar a lista de desejos
        Entao irei visualizar uma mensagem "Você deve logar ou registrar-se para adicionar itens à sua lista de desejos."   