login = Login.new

Dado("que eu esteja na pagina de login") do
    login.AccessLogin
  end
  
  Dado("preencho os campos {string}, {string}") do |email, senha|
    login.FillFields(email, senha)
  end
  
  Quando("eu clicar em entrar") do
    login.ClickButton
  end
  
  Entao("irei visualizar uma mensagem {string}") do |mensagem|
    login.VerifyMessage(mensagem)
  end