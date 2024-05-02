CREATE SCHEMA Ejercicio_pair_queries; 

USE northwind;

SELECT id, last_name, first_name
FROM employees; 

-- identificar productos con precios entre 0 y 5
SELECT list_price
FROM products
WHERE list_price BETWEEN 0 AND 5; 

-- selccionas productos con precio NULL

SELECT list_price
FROM products
WHERE list_price IS NULL;   

--
SELECT list_price
FROM products
WHERE list_price < 15 AND id < 20;  

SELECT list_price
FROM products
WHERE list_price > 15 AND id > 20;   

-- extraer paises

SELECT DISTINCT country_region
FROM customers;  

SELECT id, product_name, list_price
FROM products
ORDER BY id ASC
LIMIT 10;  

SELECT id, product_name, list_price
FROM products
ORDER BY id DESC
LIMIT 10;  

-- 12
SELECT DISTINCT id 
FROM order_details;  

-- 13
SELECT product_id, (quantity*unit_price) AS importe_total 
FROM order_details 
ORDER BY importe_total DESC
LIMIT 3; 

ALTER TABLE order_details
ADD COLUMN importe_total FLOAT;

UPDATE order_details
SET importe_total = (quantity*unit_price)
WHERE importe_total IS NULL;


-- 14 
SELECT product_id, (quantity*unit_price) AS importe_total 
FROM order_details 
ORDER BY importe_total DESC
LIMIT 5 OFFSET 4;   


-- 15 
SELECT DISTINCT category AS "NombredeCategoria"
FROM products; 


-- 16 
SELECT date_add(shipped_date, INTERVAL 5 DAY ) AS FechaRetrasada
FROM orders; 

-- 17 
SELECT *
FROM products
WHERE list_price BETWEEN 15 AND 50; 

-- 18 
SELECT *
FROM products 
WHERE list_price IN(18, 19, 20);


