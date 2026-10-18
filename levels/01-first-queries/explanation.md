# Querying tables

A database contains tables. Each row is a record and each column describes a property. SQL describes the result you want.

SELECT chooses columns; FROM chooses the table. An asterisk (*) selects every column. End each statement with a semicolon. Keywords are case-insensitive; uppercase makes them easier to spot.

```sql
SELECT id, name FROM products;
```

This returns two columns without changing any data. Without ORDER BY, row order is not guaranteed.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
