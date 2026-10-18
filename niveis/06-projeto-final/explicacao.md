# Analisar as vendas da loja

Missão: preparar um pequeno relatório para a loja. Consideramos vendas apenas as encomendas com estado paga. Pendentes e canceladas ficam excluídas.

O valor de cada linha é quantidade * preco_unitario_centimos. Usa o preço guardado em itens, que representa o preço praticado na compra; produtos contém o preço atual. Uma encomenda pode ter vários itens, pelo que COUNT(*) depois de juntar itens não conta encomendas.

```sql
SELECT encomenda_id, SUM(quantidade * preco_unitario_centimos) / 100.0 AS total_euros
FROM itens GROUP BY encomenda_id;
```

No SQLite, substr(data, 1, 7) extrai AAAA-MM das datas deste projeto. Constrói cada relatório por etapas: juntar, filtrar, calcular, agrupar e ordenar.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
