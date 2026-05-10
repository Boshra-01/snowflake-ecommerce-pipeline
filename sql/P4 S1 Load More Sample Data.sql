INSERT INTO ECOMMERCE_DB.RAW.ORDERS (ORDER_ID, CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PRODUCT_ID, PRODUCT_NAME, CATEGORY, QUANTITY, UNIT_PRICE, ORDER_STATUS, ORDER_DATE, SHIP_DATE, SHIP_COUNTRY, PAYMENT_METHOD)
VALUES
('ORD-2002','CUST-501','Alice Johnson','alice.johnson@email.com','PROD-303','Organic Coffee Beans 2lb','GROCERY',2,18.75,'Delivered','2025-04-08','2025-04-10','United States','Credit Card'),
('ORD-2003','CUST-502','Bob Smith','bob.smith@email.com','PROD-101','Wireless Bluetooth Headphones','ELECTRONICS',1,79.99,'Delivered','2025-04-08','2025-04-11','Canada','PayPal'),
('ORD-2004','CUST-503','Clara Wei','clara.wei@email.com','PROD-404','Yoga Mat - Purple','FITNESS',2,34.99,'Delivered','2025-04-09','2025-04-11','United States','Debit Card'),
('ORD-2005','CUST-504','David Park','david.park@email.com','PROD-606','Stainless Steel Water Bottle 32oz','KITCHEN',3,24.99,'Shipped','2025-04-09','2025-04-12','United Kingdom','Credit Card'),
('ORD-2006','CUST-505','Emma Garcia','emma.garcia@email.com','PROD-101','Wireless Bluetooth Headphones','ELECTRONICS',1,79.99,'Delivered','2025-04-10','2025-04-12','Australia','PayPal'),
('ORD-2007','CUST-501','Alice Johnson','alice.johnson@email.com','PROD-707','Python Programming Book','BOOKS',1,45.00,'Delivered','2025-04-10','2025-04-12','United States','Credit Card'),
('ORD-2008','CUST-506','Frank Miller','frank.miller@email.com','PROD-202','Running Shoes - Men Size 10','FOOTWEAR',1,129.50,'Delivered','2025-04-11','2025-04-13','United States','Debit Card'),
('ORD-2009','CUST-507','Grace Kim','grace.kim@email.com','PROD-808','Ceramic Plant Pot - Large','HOME & GARDEN',2,15.50,'Cancelled','2025-04-11',NULL,'Canada','Credit Card'),
('ORD-2010','CUST-508','Hassan Ali','hassan.ali@email.com','PROD-101','Wireless Bluetooth Headphones','ELECTRONICS',2,79.99,'Delivered','2025-04-12','2025-04-14','United States','PayPal'),
('ORD-2011','CUST-509','Iris Chen','iris.chen@email.com','PROD-303','Organic Coffee Beans 2lb','GROCERY',4,18.75,'Delivered','2025-04-12','2025-04-14','United States','Credit Card'),
('ORD-2012','CUST-510','Jake Brown','jake.brown@email.com','PROD-505','USB-C Charging Cable 6ft','ELECTRONICS',5,12.99,'Delivered','2025-04-13','2025-04-15','United States','Credit Card'),
('ORD-2013','CUST-501','Alice Johnson','alice.johnson@email.com','PROD-606','Stainless Steel Water Bottle 32oz','KITCHEN',1,24.99,'Delivered','2025-04-13','2025-04-15','United States','Credit Card'),
('ORD-2014','CUST-502','Bob Smith','bob.smith@email.com','PROD-404','Yoga Mat - Purple','FITNESS',1,34.99,'Processing','2025-04-14',NULL,'Canada','PayPal'),
('ORD-2015','CUST-511','Karen Lee','karen.lee@email.com','PROD-101','Wireless Bluetooth Headphones','ELECTRONICS',1,79.99,'Delivered','2025-04-14','2025-04-16','United States','Debit Card'),
('ORD-2016','CUST-512','Leo Martinez','leo.martinez@email.com','PROD-202','Running Shoes - Men Size 10','FOOTWEAR',1,129.50,'Delivered','2025-04-15','2025-04-17','United States','Credit Card'),
('ORD-2017','CUST-503','Clara Wei','clara.wei@email.com','PROD-707','Python Programming Book','BOOKS',2,45.00,'Shipped','2025-04-15','2025-04-18','United States','Credit Card'),
('ORD-2018','CUST-513','Maya Patel','maya.patel@email.com','PROD-808','Ceramic Plant Pot - Large','HOME & GARDEN',3,15.50,'Delivered','2025-04-16','2025-04-18','United Kingdom','PayPal'),
('ORD-2019','CUST-505','Emma Garcia','emma.garcia@email.com','PROD-303','Organic Coffee Beans 2lb','GROCERY',2,18.75,'Delivered','2025-04-16','2025-04-18','Australia','PayPal'),
('ORD-2020','CUST-514','Noah Wilson','noah.wilson@email.com','PROD-505','USB-C Charging Cable 6ft','ELECTRONICS',3,12.99,'Cancelled','2025-04-17',NULL,'Canada','Debit Card'),
('ORD-2021','CUST-501','Alice Johnson','alice.johnson@email.com','PROD-202','Running Shoes - Men Size 10','FOOTWEAR',1,129.50,'Delivered','2025-04-17','2025-04-19','United States','Credit Card');


SELECT COUNT(*) FROM ECOMMERCE_DB.RAW.ORDERS;