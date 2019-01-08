#language:pt

Funcionalidade: incluir um produto ao carrinho de compras
    Para que eu possa ter um produto no carrinho de compras
    Sendo um cliente em busca de um produto
    Posso adicionar um produto ao carrinho para compra

    Cenario: Adicionar produto ao carrinho
        Dado que estou na pagina inicial do sistema
        E pesquiso o livro "Automação de Testes"
        Quando visualizo o livro "Inovação e Automação de Testes de Software"
        E seleciono comprar
        Então sou redirecionado para o carrinho de compras com um produto adicionado