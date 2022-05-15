#language: pt

@CadastroInvalido
Funcionalidade: Realizar o cadastro invalido no site

    Eu como usuario
    Quero criar uma conta com email ja utilizado
    Para poder visualizar uma mensagem de erro

    Cenario: Realizar o cadastro invalido
        Dado que eu esteja na pagina de cadastro 
        E preencho todos os campos "Charlotte","Brewer", "roni_cost@example.com", "senha1234@" e "senha1234@"
        Quando eu clicar em criar conta
        Entao irei visualizar uma mensagem de erro "There is already an account with this email address. If you are sure that it is your email address, click here to get your password and access your account."