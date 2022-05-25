Dado("preencho os campos {string}, {string} e clico em entrar") do |email, senha|
    @login.FillFields(email, senha)
    @login.ClickButton
  end

Quando("eu clicar em adicionar a lista de desejos") do
    @favorite.ClickFavorite
  end

  Entao("irei visualizar uma mensagem{string}") do |mensagem|
    @favorite.Confirm(mensagem)
end  