#language:pt

@busca
Funcionalidade: realizar busca

Eu como usuario
Quero fazer uma busca de produto dentro do site

@buscavalidalog
    Cenario: busca valida logado
    Dado que eu esteja na pagina de login
    E preencho os campos "roni_cost@example.com", "roni_cost3@example.com"
    E clico em "Sign In"
    Quando preencho o campo de busca com o nome do produto "Proteus Fitness Jackshirt"
    Entao irei visualizar o produto

@buscavalidadeslog
    Cenario: busca valida deslogado
    Dado que eu esteja na pagina principal
    Quando preencho o campo de busca com o nome do produto "Proteus Fitness Jackshirt"
    Entao irei visualizar o produto

@buscainvalidalog
    Cenario: busca invalida logado
    Dado que eu esteja na pagina de login
    E preencho os campos "roni_cost@example.com", "roni_cost3@example.com"
    E clico em "Sign In"
    Quando preencho o campo de busca com o nome do produto "camiseta preta"
    Entao irei visualizar a mensagem "Your search returned no results."

@buscainvalidadeslog
    Cenario: busca invalida deslogado
    Dado que eu esteja na pagina principal
    Quando preencho o campo de busca com o nome do produto "camiseta preta"
    Entao irei visualizar a mensagem "Your search returned no results."
