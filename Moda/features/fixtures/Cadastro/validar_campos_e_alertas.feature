#language: pt

@ValidarCamposAlertas
Funcionalidade: Validar os campos obrigatorios e alertas de erros 

    Eu como Analista de qualidade
    Quero validar todos os campos obrigatorios e alertas de erros
    Para verificar se a pagina está mostrando alguma mensagem de aviso


    Esquema do Cenario: Validar campos e alertas
    Dado que eu esteja na tela de cadastro
    E preencho os campos "<nome>", "<sobrenome>","<email>","<senha>" e "<senhaconfirm>"
    Quando eu clicar no botao criar conta
    Entao irei visualizar a "<mensagemPT>", "<mensagemEN>" de erro 

    Exemplos:
    |nome    |sobrenome   |email                |senha       |senhaconfirm |mensagemPT                |mensagemEN |
    |        |Tucker      |banupa@mailinator.com|abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |This is a required field.|
    |Phelan  |            |vugrev@mailinator.com|abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |This is a required field.|
    |Olga    |Tucker      |                     |abcdefg123@ |abcdefg123@  |Esse campo é obrigatório. |This is a required field.|
    |        |            |teste2               |            |             |Por favor insira um endereço de email válido (Ex: exemplo@dominio.com). |Please enter a valid email address (Ex: johndoe@domain.com).|
    |Olga    |Masd        |banupa@mailinator.com|            |abcdefg123@  |Esse campo é obrigatório. |This is a required field.|
    |Phelan  |Masd        |banupa@mailinator.com|abcdefg123@ |             |Esse campo é obrigatório. |This is a required field.|
    |Phelan  |Masd        |banupa@mailinator.com|abcdefg123@ |gfedabc123   |Digite novamente o mesmo valor. |Please enter the same value again.|
    |Phelan  |Masd        |banupa@mailinator.com|abcd12@     |abcd12@      |Comprimento mínimo deste campo deve ser igual ou maior que 8 símbolos. Espaços a esquerda e a direita serão ignorados. |Minimum length of this field must be equal or greater than 8 symbols. Leading and trailing spaces will be ignored.|
    |Phelan  |Masd        |banupa@mailinator.com|abcdefgh    |abcdefgh     |O mínimo de classes de caracteres diferentes na palavra-passe é 3. As classes de caracteres são: Minúsculas, Maiúsculas, Números, Caracteres Especiais. |Minimum of different classes of characters in password is 3. Classes of characters: Lower Case, Upper Case, Digits, Special Characters.|
