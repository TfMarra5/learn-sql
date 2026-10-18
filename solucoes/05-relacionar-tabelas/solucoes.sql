-- Desafio 1: Mostra id da encomenda, nome do cliente e estado, por id da encomenda.
SELECT e.id, c.nome, e.estado FROM encomendas e JOIN clientes c ON c.id=e.cliente_id ORDER BY e.id;

-- Desafio 2: Mostra todos os clientes e o total de encomendas de cada um, incluindo zero. Colunas nome e total_encomendas, por id do cliente.
SELECT c.nome, COUNT(e.id) AS total_encomendas FROM clientes c LEFT JOIN encomendas e ON e.cliente_id=c.id GROUP BY c.id, c.nome ORDER BY c.id;

-- Desafio 3: Mostra os nomes dos clientes sem encomendas, por id.
SELECT c.nome FROM clientes c LEFT JOIN encomendas e ON e.cliente_id=c.id WHERE e.id IS NULL ORDER BY c.id;
