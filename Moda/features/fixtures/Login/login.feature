#language: pt

@Login
Funcionalidade: Realizar o login

    Eu como usuario 
    Quero realizar o login no site
    Para realizar uma compra

    @LoginSucesso
    Cenario: Login realizado com sucesso
        Dado que eu esteja na tela de login
        E preencho meu email "davidlima@webjump.com.br" e senha "w3bjump@29"  
        Quando eu clicar em entrar
        Entao irei visualizar uma mensagem "Minha Conta", "My Account"

    @LoginInvalido
    Cenario: Login invalido
        Dado que eu esteja na tela de login
        E preencho meu email "davidlima@webjump.com.br" e senha "abcde" 
        Quando eu clicar em entrar
        Entao irei visualizar uma mensagem "O login da conta estava incorreto ou sua conta está desativada temporariamente.", "The account sign-in was incorrect or your account is disabled temporarily."

    @LoginValidar
    Esquema do Cenario: Validar alertas e campos obrigatorios
        Dado que eu esteja na tela de login
        E preencho meu email "<email>" e senha "<senha>"
        Quando eu clicar em entrar
        Entao irei visualizar uma mensagem "<mensagemPT>", "<mensagemEN>"

        Exemplos: Login
        |email            |senha   |mensagemPT                |mensagemEN               |
        |                 |teste2  |Esse campo é obrigatório. |This is a required field.|
        |teste2@gmail.com |        |Esse campo é obrigatório. |This is a required field.|
        |                 |        |Esse campo é obrigatório. |This is a required field.|
