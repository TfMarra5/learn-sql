-- Challenge 1: Show order id, customer name and status, ordered by order id.
SELECT e.id, c.name, e.status FROM orders e JOIN customers c ON c.id=e.customer_id ORDER BY e.id;

-- Challenge 2: Show every customer and their order count, including zero. Use columns name and total_orders, ordered by customer id.
SELECT c.name, COUNT(e.id) AS total_orders FROM customers c LEFT JOIN orders e ON e.customer_id=c.id GROUP BY c.id, c.name ORDER BY c.id;

-- Challenge 3: Show names of customers without orders, ordered by customer id.
SELECT c.name FROM customers c LEFT JOIN orders e ON e.customer_id=c.id WHERE e.id IS NULL ORDER BY c.id;
