-- DATA INSERTION (Used small dataset for practice purpose)
INSERT INTO Customers (name) VALUES						                    -- Customers
	("david"), ("lorraine"), ("anuj"), ("ayan"),
    ("ankur"), ("danish"), ("kiran"), ("pooja"),
    ("steve"), ("nancy"), ("ayesha"), ("faiza"),
    ("fareed"), ("dustin"), ("ollie"), ("karan");
    
INSERT INTO Orders (customer_id, order_date) VALUES			            -- Orders
	(2, "2023-12-01"), (4, "2023-11-12"), (2, "2024-01-23"), 
    (7, "2023-10-01"), (12, "2023-12-01"), (6, "2023-11-11"), 
    (7, "2024-02-22"), (1, "2023-11-02"), (10, "2023-04-30"), 
    (15, "2024-02-23"), (9, "2023-01-01"), (8, "2023-12-31");
    
    
INSERT INTO Order_Items (order_id, product_name, amount) VALUES			-- Order_Items
	(1, "Phone", 35000), (2, "Mouse", 1200), (2, "Microwave", 9000),
    (3, "Cosmetics", 3000), (6, "Soft-Toy", 1300), (6, "Laptop", 100000),
    (6, "Mouse", 1200), (9, "Air-Fryer", 8000), (9, "Curtains", 3500),
    (4, "Keyboard", 2000), (5, "Pillow", 2000), (7, "Bedsheet", 1200),
    (8, "Laptop", 90000), (10, "Phone", 20000), (10, "Microfiber-Cloth", 650),
    (11, "Crayon", 1000), (12, "Dinner-Set", 4500), (12, "Sunglasses", 700);
 
