cadastro = CreateAccount.new

Dado("que eu esteja na pagina de cadastro") do
    cadastro.AccessCreateAccount
  end
  
  Dado("insiro meus dados nos campos {string}, {string}, {string}, {string}, {string}") do |nome, sobrenome, email, senha, confirmar|
    cadastro.FillFields(nome, sobrenome, email, senha, confirmar)
  end
  
  Quando("eu clicar em criar conta") do
    cadastro.ClickButton
  end
  
  Entao("irei visualizar a mensagem {string}") do |mensagem|
    cadastro.VerifyMessage(mensagem)
  end