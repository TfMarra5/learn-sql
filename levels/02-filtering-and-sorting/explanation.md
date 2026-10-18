# Filtering and sorting

WHERE filters rows; ORDER BY sorts them; DESC means descending; LIMIT restricts the number of rows. Put text in single quotes, but leave numbers unquoted. AND requires both conditions; OR requires at least one. Use parentheses when combining them.

```sql
SELECT name, price_cents FROM products
WHERE category = 'Stationery' AND price_cents < 1000
ORDER BY price_cents ASC, id ASC;
```

Money is stored as whole cents: 1000 means €10. A second sort column breaks ties.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
