# Relacionar tabelas com JOIN

Uma chave primária identifica um registo. Uma chave estrangeira aponta para um registo noutra tabela: encomendas.cliente_id aponta para clientes.id.

JOIN combina linhas que correspondem à condição ON. LEFT JOIN mantém todas as linhas da tabela da esquerda, mesmo sem correspondência; as colunas da direita ficam NULL. Os nomes curtos c e e são aliases.

```sql
SELECT c.nome, e.data
FROM clientes AS c
JOIN encomendas AS e ON e.cliente_id = c.id;
```

Um cliente com três encomendas aparece três vezes: cada linha representa uma combinação. Para contar encomendas num LEFT JOIN usa COUNT(e.id), pois COUNT(*) também conta a linha do cliente sem encomendas.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
