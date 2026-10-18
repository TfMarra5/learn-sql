-- Challenge 1: Show name and city for customers in Porto, sorted by name.
SELECT name, city FROM customers WHERE city = 'Porto' ORDER BY name;

-- Challenge 2: Show name and price_cents for Computing products costing at least €40, most expensive first.
SELECT name, price_cents FROM products WHERE category = 'Computing' AND price_cents >= 4000 ORDER BY price_cents DESC, id;

-- Challenge 3: Show name and price_cents for the three cheapest products, ordered by price and then id.
SELECT name, price_cents FROM products ORDER BY price_cents, id LIMIT 3;
