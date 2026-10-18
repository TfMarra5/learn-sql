-- Desafio 1: Mostra nome e cidade dos clientes do Porto, por nome.
SELECT nome, cidade FROM clientes WHERE cidade = 'Porto' ORDER BY nome;

-- Desafio 2: Mostra nome e preco_centimos dos produtos de Informática que custam pelo menos 40 €, do mais caro para o mais barato.
SELECT nome, preco_centimos FROM produtos WHERE categoria = 'Informática' AND preco_centimos >= 4000 ORDER BY preco_centimos DESC, id;

-- Desafio 3: Mostra nome e preco_centimos dos três produtos mais baratos, ordenados por preço e depois id.
SELECT nome, preco_centimos FROM produtos ORDER BY preco_centimos, id LIMIT 3;
