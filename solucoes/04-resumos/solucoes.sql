-- Desafio 1: Conta todos os clientes. Usa o nome total_clientes.
SELECT COUNT(*) AS total_clientes FROM clientes;

-- Desafio 2: Para cada categoria, mostra categoria e preço médio em euros, arredondado a duas casas, com o nome media_euros. Ordena por categoria.
SELECT categoria, ROUND(AVG(preco_centimos)/100.0,2) AS media_euros FROM produtos GROUP BY categoria ORDER BY categoria;

-- Desafio 3: Mostra cidade e total de clientes apenas das cidades com pelo menos dois clientes. Ordena por cidade.
SELECT cidade, COUNT(*) AS total FROM clientes GROUP BY cidade HAVING COUNT(*) >= 2 ORDER BY cidade;
