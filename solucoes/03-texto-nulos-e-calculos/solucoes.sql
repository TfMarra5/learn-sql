-- Desafio 1: Mostra os nomes dos clientes sem email, por id.
SELECT nome FROM clientes WHERE email IS NULL ORDER BY id;

-- Desafio 2: Mostra as cidades distintas, por ordem alfabética.
SELECT DISTINCT cidade FROM clientes ORDER BY cidade;

-- Desafio 3: Mostra nome e preço em euros dos produtos cujo nome começa por C, por id. Chama preco_euros à coluna calculada.
SELECT nome, preco_centimos / 100.0 AS preco_euros FROM produtos WHERE nome LIKE 'C%' ORDER BY id;
