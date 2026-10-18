-- Desafio 1: Calcula a receita total das encomendas pagas em euros. Coluna receita_euros.
SELECT SUM(i.quantidade*i.preco_unitario_centimos)/100.0 AS receita_euros FROM encomendas e JOIN itens i ON i.encomenda_id=e.id WHERE e.estado='paga';

-- Desafio 2: Mostra mes e receita_euros por mês, apenas de encomendas pagas, por mês crescente.
SELECT substr(e.data,1,7) AS mes, SUM(i.quantidade*i.preco_unitario_centimos)/100.0 AS receita_euros FROM encomendas e JOIN itens i ON i.encomenda_id=e.id WHERE e.estado='paga' GROUP BY substr(e.data,1,7) ORDER BY mes;

-- Desafio 3: Mostra os três clientes com maior total pago. Colunas nome e total_euros; ordena pelo total decrescente e por id do cliente em caso de empate.
SELECT c.nome, SUM(i.quantidade*i.preco_unitario_centimos)/100.0 AS total_euros FROM clientes c JOIN encomendas e ON e.cliente_id=c.id JOIN itens i ON i.encomenda_id=e.id WHERE e.estado='paga' GROUP BY c.id,c.nome ORDER BY total_euros DESC,c.id LIMIT 3;
