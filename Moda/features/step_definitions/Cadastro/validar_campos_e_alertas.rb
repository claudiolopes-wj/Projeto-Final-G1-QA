createAccount = CreateAccountPage.new

Dado("que eu esteja na tela de cadastro") do
    createAccount.AccessRegistration
end
  

Dado("preencho os campos {string}, {string},{string},{string} e {string}") do |nome, sobrenome, email, senha, senhaConfirm|
    createAccount.Fill(nome, sobrenome, email, senha, senhaConfirm, false)
end
  
Quando("eu clicar no botao criar conta") do
    createAccount.Click()
end
  
Entao("irei visualizar a {string}, {string} de erro") do |mensagemPT, mensagemEN|
    createAccount.Assert(mensagemPT,mensagemEN)
end