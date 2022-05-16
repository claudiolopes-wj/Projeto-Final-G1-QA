#language:pt

@cadastro
Funcionalidade: Realizar cadastro

@cadastrosucesso
Cenario: Cadastro com sucesso
    Dado que eu esteja na pagina de cadastro
    E insiro meus dados nos campos "nome", "sobrenome", "true", "senha@123", "senha@123"
    Quando eu clicar em criar conta
    Entao irei visualizar a mensagem "Obrigado por registrar-se com Main Website Store."

@cadastroinvalido
Cenario: Cadastro com falha
    Dado que eu esteja na pagina de cadastro
    E insiro meus dados nos campos "nome", "sobrenome", "comandante83@gmail.com", "senha@123", "senha@123"
    Quando eu clicar em criar conta
    Entao irei visualizar a mensagem "Já existe uma conta com este endereço de e-mail."

@validarcamposealertas
Esquema do Cenario: Validacao de campos e alertas de erros
    Dado que eu esteja na pagina de cadastro
    E insiro meus dados nos campos "<nome>", "<sobrenome>", "<email>", "<senha>", "<confirma>"
    Quando eu clicar em criar conta
    Entao irei visualizar a mensagem "<mensagem>"

    Exemplos:
    |nome    |sobrenome   |email                  |senha       |confirma     |mensagem|
    |        |Lopes       |comandante83@gmail.com |abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |
    |Claudio |            |comandante83@gmail.com |abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |
    |Claudio |Lopes       |                       |abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |
    |        |            |comandante             |            |             |Por favor insira um endereço de email válido (Ex: exemplo@dominio.com). |
    |Claudio |Lopes       |comandante83@gmail.com |            |abcdefg123@  |Esse campo é obrigatório. |
    |Claudio |Lopes       |comandante83@gmail.com |abcdefg123@ |             |Esse campo é obrigatório. |
    |Claudio |Lopes       |comandante83@gmail.com |abcdefg123@ |gfedabc123   |Por favor, digite a senha novamente|
    |Claudio |Lopes       |comandante83@gmail.com |abcd12@     |abcd12@      |Comprimento mínimo deste campo deve ser igual ou maior que 8 símbolos. Espaços a esquerda e a direita serão ignorados. |
    |Claudio |Lopes       |comandante83@gmail.com |abcdefgh    |abcdefgh     |O mínimo de classes de caracteres diferentes na palavra-passe é 3. As classes de caracteres são: Minúsculas, Maiúsculas, Números, Caracteres Especiais. |
    