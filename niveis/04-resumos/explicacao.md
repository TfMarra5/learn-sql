# Contar e agrupar

COUNT(*) conta linhas, SUM soma e AVG calcula a média. GROUP BY reúne linhas com o mesmo valor. WHERE filtra linhas antes de agrupar; HAVING filtra os grupos já calculados. COUNT(email) ignora emails NULL, enquanto COUNT(*) conta todos os clientes.

```sql
SELECT categoria, COUNT(*) AS quantidade
FROM produtos GROUP BY categoria HAVING COUNT(*) >= 2;
```

Seleciona apenas colunas de agrupamento ou cálculos agregados nestes resumos. ROUND(valor, 2) arredonda para duas casas decimais.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
