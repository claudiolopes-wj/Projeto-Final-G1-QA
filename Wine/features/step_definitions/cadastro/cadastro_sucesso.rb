cadastro = Register.new

Dado("que eu acesso o site") do
    cadastro.AccessPage
  end
  
  Dado("clico em Criar conta") do
    cadastro.CreateAccount_click
  end
  
  Dado("preencho {string}, {string}") do |nome, sobrenome|
    cadastro.InputName(nome, sobrenome)
  end
  
  Dado("depois clico em Assinar Newsletter") do
    cadastro.ClickNewsletter
  end
  
  Dado("depois clico em Allow remote shopping assistance") do
    cadastro.ClickAllowRemoteShoppingAssistance
  end
  
  Dado("preencho email, {string}, {string}") do |senha, confirmar|
    cadastro.InputEmail(senha, confirmar)
  end
  
  Quando("eu clicar em Criar conta") do
    cadastro.ClickCreateAccount
  end
  
  Então("irei visualizar a mensagem: {string}") do |mensagem|
    cadastro.ViewMessage(mensagem)
  end