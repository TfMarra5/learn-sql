-- Challenge 1: Calculate total revenue in euros from paid orders. Name the column revenue_euros.
SELECT SUM(i.quantity*i.unit_price_cents)/100.0 AS revenue_euros FROM orders e JOIN order_items i ON i.order_id=e.id WHERE e.status='paid';

-- Challenge 2: Show month and revenue_euros for paid orders in each month, ordered by month.
SELECT substr(e.order_date,1,7) AS month, SUM(i.quantity*i.unit_price_cents)/100.0 AS revenue_euros FROM orders e JOIN order_items i ON i.order_id=e.id WHERE e.status='paid' GROUP BY substr(e.order_date,1,7) ORDER BY month;

-- Challenge 3: Show the three customers with the highest paid totals. Use name and total_euros; sort by total descending, then customer id to break ties.
SELECT c.name, SUM(i.quantity*i.unit_price_cents)/100.0 AS total_euros FROM customers c JOIN orders e ON e.customer_id=c.id JOIN order_items i ON i.order_id=e.id WHERE e.status='paid' GROUP BY c.id,c.name ORDER BY total_euros DESC,c.id LIMIT 3;
