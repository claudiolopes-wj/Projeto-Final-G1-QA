createAccount = CreateAccountPage.new

Dado("preencho todos os campos {string},{string}, {string}, {string} e {string}") do |nome, sobrenome, email, senha, senhaConfirm|
    createAccount.Fill(nome, sobrenome, email, senha, senhaConfirm, false)
end

Entao("irei visualizar uma mensagem de erro {string}") do |mensagem|
    createAccount.Assert(mensagem)
end