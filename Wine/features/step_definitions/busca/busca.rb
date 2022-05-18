busca = Search.new
login = Login.new

Dado("que eu esteja na pagina principal") do
    busca.AccessHome
  end

Dado("clico em {string}") do |string|
    login.ClickButton
  end
  
  Quando("preencho o campo de busca com o nome do produto {string}") do |nome|
    busca.SearchFill(nome)
  end
  
  Entao("irei visualizar o produto") do
    busca.ViewProduct
  end