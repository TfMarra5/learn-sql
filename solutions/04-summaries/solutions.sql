-- Challenge 1: Count all customers. Name the column total_customers.
SELECT COUNT(*) AS total_customers FROM customers;

-- Challenge 2: For each category, show category and average price in euros, rounded to two decimal places as average_euros. Sort by category.
SELECT category, ROUND(AVG(price_cents)/100.0,2) AS average_euros FROM products GROUP BY category ORDER BY category;

-- Challenge 3: Show city and total customers for cities with at least two customers. Name the count total and sort by city.
SELECT city, COUNT(*) AS total FROM customers GROUP BY city HAVING COUNT(*) >= 2 ORDER BY city;
