# Store sales report

Your mission is to prepare a store sales report. Only orders with status paid count as sales. Exclude pending and cancelled orders.

Each line is worth quantity * unit_price_cents. Use the historical price in order_items, not the current price in products. An order can contain multiple items, so COUNT(*) after joining order_items does not count orders.

```sql
SELECT order_id, SUM(quantity * unit_price_cents) / 100.0 AS total_euros
FROM order_items GROUP BY order_id;
```

In SQLite, substr(order_date, 1, 7) extracts YYYY-MM from this project's dates. Build your report step by step: join, filter, calculate, group, then sort.

Read challenges.md next and write your queries in answers.sql. Try before opening the solutions.
