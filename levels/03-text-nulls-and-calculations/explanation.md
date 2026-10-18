# Text, missing values and calculations

NULL means missing or unknown. Use IS NULL or IS NOT NULL, rather than = NULL. LIKE matches patterns: % means zero or more characters. DISTINCT removes duplicate result rows. AS names an output column.

```sql
SELECT name, price_cents / 100.0 AS price_euros
FROM products WHERE name LIKE 'N%';
```

Using 100.0 preserves fractional euros in SQLite. These exercises do not rely on case conversion for accented characters.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
