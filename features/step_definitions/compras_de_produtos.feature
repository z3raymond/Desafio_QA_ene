# language: pt


Funcionalidade:Compra de produtos

Como lojas magazine luiza
Eu quero permite a compra de produtos
Online atraves do site magalu.


Cenario: Simulando compra de uma geladeira
Dado que acesso site magalu
Quando digito geladeira e clico na lupa
E escolho uma geladeira da lista
E adiciono ao carrinho
Então detro do carrinho devo ver informações do produto e preço


Cenario:Simulando compra de uma geladeira quando não preencho campo de pesquisa
Dado que acesso site magalu
Quando não preencho campo pesquisa
Então não deve aparecer uma lista de geladeiras

@temp
Cenario:Simulando compra de uma geladeira quando adiciono a geladeira no carrinho
Dado que acesso site magalu
Quando digito geladeira e clico na lupa
E escolho uma geladeira da lista
E não adiciono ao carrinho
Então o carrinho vai esta vazio
