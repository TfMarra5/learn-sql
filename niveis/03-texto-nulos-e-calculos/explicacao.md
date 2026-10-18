# Texto, valores em falta e cálculos

NULL significa valor desconhecido ou ausente. Usa IS NULL e IS NOT NULL; comparar com = NULL não funciona como comparar valores comuns. LIKE procura padrões: % representa zero ou mais caracteres. DISTINCT elimina linhas repetidas do resultado. AS dá um nome à coluna de saída.

```sql
SELECT nome, preco_centimos / 100.0 AS preco_euros
FROM produtos WHERE nome LIKE 'C%';
```

100.0 força uma divisão com parte decimal no SQLite. Estes exemplos de LIKE não dependem de comparações entre letras acentuadas e não acentuadas.

Lê agora desafios.md e escreve as tuas consultas em respostas.sql. Consulta as soluções só depois de tentares.
