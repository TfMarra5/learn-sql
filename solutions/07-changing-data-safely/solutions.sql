-- Challenge 1: In a transaction, insert customer 99, Test, Faro, with no email. Query that customer, then undo everything.
BEGIN;
INSERT INTO customers(id,name,city,email) VALUES (99,'Test','Faro',NULL);
SELECT * FROM customers WHERE id=99;
ROLLBACK;

-- Challenge 2: In a transaction, change product 2 to 2200 cents. Query its id, name and price_cents, then undo everything.
BEGIN;
UPDATE products SET price_cents=2200 WHERE id=2;
SELECT id,name,price_cents FROM products WHERE id=2;
ROLLBACK;

-- Challenge 3: In a transaction, delete customer 6, who has no orders. Count the remaining customers as total_customers, then undo everything.
BEGIN;
DELETE FROM customers WHERE id=6;
SELECT COUNT(*) AS total_customers FROM customers;
ROLLBACK;
