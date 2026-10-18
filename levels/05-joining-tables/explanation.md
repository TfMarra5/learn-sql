# Joining tables

A primary key identifies a record. A foreign key points to a record in another table: orders.customer_id refers to customers.id.

JOIN combines rows matching its ON condition. LEFT JOIN keeps every row on the left, even when no match exists; columns on the right are then NULL. Short names such as c and o are aliases.

```sql
SELECT c.name, o.order_date
FROM customers AS c
JOIN orders AS o ON o.customer_id = c.id;
```

A customer with three orders appears three times. To count orders after a LEFT JOIN, use COUNT(o.id): COUNT(*) also counts the row for a customer with no orders.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
