**PROJECT**: E-Commerce SQL Analytics System

**OBJECTIVE**: Simple system to Analyze customer behaviour and order data using SQL

**DATABASE DESIGN**: 
TABLES: Customers ( customer_id INT PK, name VARCHAR),
        Orders (order_id INT PK, customer_id INT FK, order_date DATE)
        Order_Items (item_id INT PK, order_id INT FK, product_name VARCHAR,                         amount INT)

**KEY QUERIES & INSIGHTS**
1. Customers with No Orders
Utilize LEFT JOIN to find customers who have never made any order
Insight: This will help target these customers for engagement strategies

2. Total Spending per Customer
Utilize JOIN and GROUP BY to find total spending by each customer
Insight: This will help find high-value customers who are contributing the most to overall revenue

3. Top 2 Highest Spending Customers
Utilize ranking based on total spending using aggregation and sorting
Insight: This can be useful for loyalty program strategies

4. Average Order Value
Utilize subqueries to find average of total order values
Insight: This will help understand average order value behavior by customers

5. Revenue per Order
Utilize aggregation to find total revenue per order
Insight: This will help find high-value orders

6. Ranking Orders per Customer
Utilize DENSE_RANK() with PARTITION BY to rank orders for each customer
Insight: This will help understand customer order behavior and find the highest value order for each customer

7. Customers Spending Above Average
Utilize subqueries to find customers spending more than average

**TOOLS USED**
MySQL

**SKILLS DEMONSTRATED**
- SQL Joins (INNER, LEFT)
- Aggregation (SUM, AVG, GROUP BY)
- Subqueries (nested queries)
- Window Functions (DENSE_RANK, PARTITION BY)
- Data analysis and business insight generation

**CONCLUSION**
This project demonstrates how raw transactional data can be transformed into actionable business insights using SQL.
