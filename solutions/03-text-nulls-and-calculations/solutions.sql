-- Challenge 1: Show the names of customers without an email, ordered by id.
SELECT name FROM customers WHERE email IS NULL ORDER BY id;

-- Challenge 2: Show distinct cities in alphabetical order.
SELECT DISTINCT city FROM customers ORDER BY city;

-- Challenge 3: Show name and price in euros for products whose name starts with N, ordered by id. Name the calculated column price_euros.
SELECT name, price_cents / 100.0 AS price_euros FROM products WHERE name LIKE 'N%' ORDER BY id;
