Dado('que estou na pagina inicial do sistema') do
  visit 'https://www.saraiva.com.br/'
end

Dado('pesquiso o livro {string}') do |nome_livro|
  find('input[name=q]').set nome_livro
  find('div[id=chaordic-search-button]').click
end

Quando('visualizo o livro {string}') do |livro|
  within('.nm-product-info') do
    @livro_encontrado = find('a[title^=Inovação]')
  end

  expect(@livro_encontrado).to have_content livro
end

Quando('seleciono comprar') do
  within('.nm-product-info') do
    find('a[title^=Inovação]').click
  end

  within('.buy-area') do
    click_button 'Comprar'
  end
end

Então('sou redirecionado para o carrinho de compras com um produto adicionado') do
    @item_carrinho = find('.product-cart-info')
  expect(@item_carrinho).to have_content 'Inovação e Automação de Testes de Software'
end

