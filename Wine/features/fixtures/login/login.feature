#language:pt

@login
Funcionalidade: realizar login

@loginsucesso
    Cenario: Login com sucesso
    Dado que eu esteja na pagina de login
    E preencho os campos "ruby@mailinator.com", "Alabama01"
    Quando eu clicar em entrar
    Entao irei visualizar uma mensagem "Minha Conta"

@logininvalido
    Cenario: Login invalido
    Dado que eu esteja na pagina de login
    E preencho os campos "comandante83@gmail.com", "teste123"
    Quando eu clicar em entrar
    Entao irei visualizar uma mensagem "O login da conta estava incorreto ou sua conta está desativada temporariamente."

@loginvalidarcampos
    Esquema do Cenario: Validar campos e alertas de erros
    Dado que eu esteja na pagina de login
    E preencho os campos "<email>", "<senha>"
    Quando eu clicar em entrar
    Entao irei visualizar uma mensagem "<mensagem>"
    
    Exemplos: Login
    |email                  |senha    |mensagem|
    |                       |senha@123|Esse campo é obrigatório.|
    |comandante83@gmail.com |         |Esse campo é obrigatório.|
    |                       |         |Esse campo é obrigatório.|

