# Learning SQL — Your store

A hands-on project with 7 levels and 21 challenges. The SQLite database contains fictional data: 6 customers, 6 products, 8 orders and 12 order items. No server or Python installation is required.

## Get started

1. Install DB Browser for SQLite from https://sqlitebrowser.org/dl/ .
2. Select **Open Database** and open `data/store.db` in this folder.
3. Open **Execute SQL** and run `SELECT * FROM customers;`. You should see six customers.
4. Run `PRAGMA foreign_keys = ON;` before starting transactions. Enable this setting for each new connection.
5. Start with `levels/01-first-queries/explanation.md`.

If you previously opened the Portuguese database, close that connection and open `data/store.db`. Table names, column names, product names, categories and status values now use English. Personal names and Portuguese place names remain unchanged.

## Zed and DB Browser

Use DB Browser to execute queries and inspect results. Optionally open this folder in Zed to read lessons and save your queries in each level's `answers.sql`. Copy a query into DB Browser to run it. Saving SQL text does not execute it.

Official references: https://sqlitebrowser.org/ and https://zed.dev/docs/languages/sql .

## Study routine

Allow 20–30 minutes per level. Read `explanation.md`, try its example, then open `challenges.md`. Write your work in `answers.sql` and save it. Ask for a hint in chat using the level and challenge number. Check the matching folder under `solutions/` only after trying: it contains `solutions.sql` and `results.md`.

Move on when you can explain your query in your own words. Track completion in `progress.md`. Different queries can produce the same correct result.

## Learning path

1. First queries: SELECT and FROM.
2. Filtering and sorting: WHERE, AND, ORDER BY and LIMIT.
3. Text, NULLs and calculations: LIKE, DISTINCT, IS NULL and aliases.
4. Summaries: COUNT, AVG, GROUP BY and HAVING.
5. Joining tables: JOIN and LEFT JOIN.
6. Final project: a store sales report.
7. Changing data safely: INSERT, UPDATE, DELETE and transactions.

## Data model

`customers` → `orders` → `order_items` ← `products`

- customers: id, name, city, email (nullable).
- products: id, name, category, price_cents (current price).
- orders: id, customer_id, order_date (YYYY-MM-DD text), status.
- order_items: order_id, product_id, quantity, unit_price_cents (historical sale price).

A customer can have multiple orders. An order contains multiple items. Each item links a product to an order; order_id and product_id together identify an item. Revenue includes only paid orders. Status values are paid, pending and cancelled. Money is stored as integer cents; divide by 100.0 to display euros.

## Restore the starting data

Close your current database. Create a **new empty database** with another name, such as `store-reset.db`. In Execute SQL, open `data/01_create_database.sql` and run the entire file. Save using **Write Changes**. Do not run the setup script on an existing populated database.

## Troubleshooting

- `no such table`: make sure you opened `data/store.db` and used the English table names.
- `no such column`: check the data model above.
- `near ... syntax error`: check commas, quotes and clause order.
- `ambiguous column name`: add the table alias, such as `c.id`.
- `cannot start a transaction within a transaction`: finish the current transaction before starting level 7.
- Empty output: check your filter against the stored values.

This project uses SQLite. Most concepts transfer to PostgreSQL, MySQL and SQL Server, but some functions and syntax differ.
