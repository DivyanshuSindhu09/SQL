SELECT COUNT(id) AS Total_Orders, MAX(amount) From orders GROUP BY customer_id;
-- Sari same customers_id ki entries ek sath club hojaengi, toh jitni bhi entries hongi wo count hojaeni 
SELECT * FROM orders;
-- GROUP BY KE SATH KOI AGGREGATION FUNCTION HI USE KRNA PADEGA

SELECT 
c.name , COUNT(*) AS total_orders, SUM (o.amount) AS total_spent
FROM customer c
JOIN orders o ON c.id = o.customer_id
WHERE status = 'Completed'
GROUP BY c.id;

--pehle join hoga and uske baad grouping or baki sab