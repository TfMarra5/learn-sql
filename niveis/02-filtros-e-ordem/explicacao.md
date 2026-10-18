# Filtrar e ordenar

WHERE escolhe as linhas; ORDER BY ordena; DESC significa ordem decrescente; LIMIT limita o número de resultados. Texto usa aspas simples; números não precisam de aspas. AND exige ambas as condições; OR aceita pelo menos uma. Usa parênteses ao misturá-los.

```sql
SELECT nome, preco_centimos FROM produtos
WHERE categoria = 'Papelaria' AND preco_centimos < 1000
ORDER BY preco_centimos ASC, id ASC;
```

Guardamos dinheiro em cêntimos inteiros: 1000 equivale a 10 €. O segundo critério de ordenação resolve empates.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
