#language: pt

@CadastroSucesso
Funcionalidade: Realizar o cadastro no site

    Eu como usuario
    Quero poder criar a minha conta no site
    Para poder realizar uma compra

    Cenario: Realizar o cadastro
        Dado que eu esteja na pagina de cadastro 
        E preencho os campos "nome","sobrenome", "dujybi@mailinators", "senha123@" e "senha123@"
        Quando eu clicar em criar conta
        Entao irei visualizar uma mensagem de sucesso "Obrigado por registrar-se com Main Website Store.",  "Thank you for registering with Main Website Store."