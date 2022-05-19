Dado("que eu esteja na tela de login") do
    @login.AccessLogin()
end
  
Dado("preencho meu email {string} e senha {string}") do |email, senha|
    @login.FillFields(email,senha)
end

Quando("eu clicar em entrar") do
    @login.ClickButton()
end

Entao("irei visualizar uma mensagem {string}, {string}") do |mensagemPT, mensagemEN|
    @login.AssertMessage(mensagemPT,mensagemEN)
end

  

