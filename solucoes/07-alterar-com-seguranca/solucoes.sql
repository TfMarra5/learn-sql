-- Desafio 1: Numa transação, insere o cliente 99, Teste, Faro, sem email. Consulta esse cliente e desfaz tudo.
BEGIN;
INSERT INTO clientes(id,nome,cidade,email) VALUES (99,'Teste','Faro',NULL);
SELECT * FROM clientes WHERE id=99;
ROLLBACK;

-- Desafio 2: Numa transação, altera o preço do produto 2 para 2200 cêntimos. Consulta id, nome e preco_centimos desse produto e desfaz tudo.
BEGIN;
UPDATE produtos SET preco_centimos=2200 WHERE id=2;
SELECT id,nome,preco_centimos FROM produtos WHERE id=2;
ROLLBACK;

-- Desafio 3: Numa transação, apaga o cliente 6, que não tem encomendas. Conta os clientes restantes com o nome total_clientes e desfaz tudo.
BEGIN;
DELETE FROM clientes WHERE id=6;
SELECT COUNT(*) AS total_clientes FROM clientes;
ROLLBACK;
