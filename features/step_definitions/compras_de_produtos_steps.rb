Dado('que acesso site magalu') do
  visit "https://www.magazineluiza.com.br/"
  
end

Quando('digito geladeira e clico na lupa') do

  find(:id, "input-search").set "geladeira"
find(:xpath,"//*[@data-testid='search-submit']" ).click
sleep 10
end

Quando('escolho uma geladeira da lista') do
  find(:xpath,"//*[@title='Geladeira Consul Frost Free 342 litros Branca com Gavetão Hortifruti - CRB39AB']" ).click
  
end

Quando('adiciono ao carrinho') do
  find(:xpath,"//*[@for='voltage-220V']").click
  find(:xpath,"//*[@data-testid='bagButton']").click
  find(:xpath,"//*[@data-testid='summary-continue-btn']").click
  
end

Então('detro do carrinho devo ver informações do produto e preço') do
  info=find(:xpath,"//*[@class='BasketItemProduct-info-title']")
  expect(info.text).to eql  "Geladeira Consul Frost Free 342 litros Branca com Gavetão Hortifruti - CRB39AB - 220V\nCódigo do produto: 831628200"
  sleep 10
  # find(:xpath,"//*[@data-testid='numbered-btn-counter']").click
end
Quando('não preencho campo pesquisa') do
  find(:id, "input-search").set " "  
end

Então('não deve aparecer uma lista de geladeiras') do
  info=find(:xpath,"//*[@data-testid='popular-departments-title']")
  expect(info.text).to eql  "Tem no Magalu"
  sleep 10
end

Quando('não adiciono ao carrinho') do
  find(:xpath,"//*[@data-testid='numbered-btn-counter']").click
end

Então('o carrinho vai esta vazio') do
  info=find(:xpath,"//*[@class='EmptyBasket-title']")
  expect(info.text).to eql  "Sua sacola está vazia"
  sleep 10
end