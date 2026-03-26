-- 1. Find customers who never placed any order

SELECT 
	c.customer_id, 
    name
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- 2. Find total money spent by each customer
SELECT 
	customer_id, 
    SUM(amount) AS total_spent
FROM Orders o
JOIN Order_Items oi
ON o.order_id = oi.order_id
GROUP BY  customer_id;

-- 3. Find the top 2 customers who spent the most

SELECT 
	o.customer_id,
	SUM(oi.amount)
FROM Orders o
INNER JOIN Order_Items oi
ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY SUM(oi.amount) DESC
LIMIT 2;

-- 4. Find the average order value

SELECT AVG(total_value) AS Avg_value
FROM 
	(SELECT 
		SUM(amount) AS total_value,
		order_id
	FROM Order_Items o
	GROUP BY order_id) t;
    
-- 5. Revenue per order

SELECT 
	order_id,
    SUM(amount) AS revenue
FROM Order_Items
GROUP BY order_id;
    
-- 6.* For each customer, rank their orders by total amount

SELECT
	o.customer_id,
    o.order_id,
    SUM(oi.amount) AS total_spent,
	DENSE_RANK() OVER(
		PARTITION BY o.customer_id
        ORDER BY SUM(oi.amount) DESC) AS customer_rank	
FROM Orders o
JOIN Order_Items oi
ON o.order_id = oi.order_id
GROUP BY o.customer_id, o.order_id;

-- 7.* Find customers whose total spending is above average spending of all customers

SELECT 
	customer_id,
    total_spent
FROM (
		SELECT
			customer_id,
            SUM(amount) AS total_spent
		FROM Orders o
        JOIN Order_Items oi
        ON o.order_id = oi.order_id
        GROUP BY customer_id
) t
WHERE total_spent > (
	SELECT AVG(total_spent)
    FROM(
		 SELECT
			customer_id,
            SUM(amount) AS total_spent
		FROM Orders o
        JOIN Order_Items oi
        ON o.order_id = oi.order_id
        GROUP BY customer_id) t2
);
