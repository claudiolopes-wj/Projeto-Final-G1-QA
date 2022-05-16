#language: pt

@Cadastro
Funcionalidade: Efetuar o cadastro

    Eu como usuario
    Quero poder criar a minha conta no site
    Para poder realizar uma compra

    @CadastroSucesso
    Cenario: Cadastro com Sucesso
        Dado que eu esteja na pagina de cadastro 
        E preencho todos os campos "nome","sobrenome", "email", "senha123@" e "senha123@"
        Quando eu clicar em criar conta
        Entao irei visualizar uma mensagem "Obrigado por registrar-se com Main Website Store.",  "Thank you for registering with Main Website Store."

    @CadastroInvalido
    Cenario: Cadastro Invalido
        Dado que eu esteja na pagina de cadastro
        E preencho todos os campos "Charlotte","Brewer", "roni_cost@example.com", "senha1234@" e "senha1234@"
        Quando eu clicar em criar conta
        Entao irei visualizar uma mensagem "Já existe uma conta com este endereço de e-mail.", "There is already an account with this email address." 

    @CadastroValidar
    Esquema do Cenario: Validar campos e alertas
        Dado que eu esteja na pagina de cadastro
        E preencho todos os campos "<nome>","<sobrenome>", "<email>", "<senha>" e "<senhaconfirm>" 
        Quando eu clicar em criar conta
        Entao irei visualizar uma mensagem "<mensagemPT>", "<mensagemEN>" 

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
