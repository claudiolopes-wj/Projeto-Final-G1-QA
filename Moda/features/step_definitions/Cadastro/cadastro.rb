createAccount = CreateAccountPage.new 

Dado("que eu esteja na pagina de cadastro") do
    createAccount.AccessRegistration
end
  
Dado("preencho todos os campos {string},{string}, {string}, {string} e {string}") do |nome, sobrenome, email, senha, senhaConfirm|
    createAccount.Fill(nome,sobrenome,email,senha,senhaConfirm)
end
  
Quando("eu clicar em criar conta") do
    createAccount.Click()
end
  
Entao("irei visualizar uma mensagem {string},  {string}") do |mensagemPT, mensagemEN|
    createAccount.Assert(mensagemPT,mensagemEN)
end