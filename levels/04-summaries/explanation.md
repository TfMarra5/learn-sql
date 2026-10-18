# Counting and grouping

COUNT(*) counts rows, SUM adds values and AVG calculates an average. GROUP BY collects rows with matching values. WHERE filters rows before grouping; HAVING filters the resulting groups. COUNT(email) skips NULL emails, while COUNT(*) counts all customers.

```sql
SELECT category, COUNT(*) AS quantity
FROM products GROUP BY category HAVING COUNT(*) >= 2;
```

In grouped queries, select grouping columns or aggregate expressions. ROUND(value, 2) rounds to two decimal places.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
