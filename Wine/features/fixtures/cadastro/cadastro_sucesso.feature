#language:pt

@Cadastro
Funcionalidade: Cadastro de cliente
        Para que eu possa me cadastrar
        Sendo um usuário
        Posso acessar o sistema com o meu email e senha cadastrados.

Cenário: Realizar cadastro com sucesso
        Dado que eu acesso o site
        E clico em Criar conta
        E preencho "Nome", "Sobrenome"
        E depois clico em Assinar Newsletter
        E depois clico em Allow remote shopping assistance
        E preencho email, "Pa$$w0rd!", "Pa$$w0rd!"
        Quando eu clicar em Criar conta
        Então irei visualizar a mensagem: "Obrigado por registrar-se com Main Website Store."