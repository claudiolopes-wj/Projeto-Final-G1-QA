
login = LoginPage.new
searchProduct = SearchProductPage.new

Dado("que eu esteja na pagina de login") do
  login.AccessLogin
end

Dado("preencho os campos email {string} e senha {string} e clico para entrar") do |email, senha|
  login.FillFields(email,senha)
  login.Click()
end

Dado("que eu esteja na pagina principal") do
  searchProduct.AcessHome()
end

Dado("busco pelo produto {string} no campo de busca") do |nomeDoProduto|
  searchProduct.FillFields(nomeDoProduto)
end

Quando("eu der enter para pesquisar") do
  searchProduct.Search()
end


Entao("irei visualizar o produto na pagina") do
  searchProduct.AssertCss()
end

Entao("irei visualizar uma mensagem: {string}, {string}") do |mensagemPT, mensagemEN|
  searchProduct.AssertMessage(mensagemPT,mensagemEN)
end