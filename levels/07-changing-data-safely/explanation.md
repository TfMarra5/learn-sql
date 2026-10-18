# Inserting, updating and deleting safely

INSERT adds rows; UPDATE changes rows; DELETE removes them. WHERE restricts which rows an UPDATE or DELETE affects. First run a SELECT with the same condition to check your target.

A transaction groups operations: BEGIN starts it, COMMIT saves it and ROLLBACK undoes uncommitted changes. Run each complete exercise from BEGIN through ROLLBACK, with no other transaction open. Save or revert any pending application changes first.

```sql
BEGIN;
UPDATE products SET price_cents = 600 WHERE id = 4;
SELECT name, price_cents FROM products WHERE id = 4;
ROLLBACK;
```

The intermediate result shows the new price. ROLLBACK restores the original price. Always end these exercises with ROLLBACK. Use a copy of store.db if you want to experiment with COMMIT.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
