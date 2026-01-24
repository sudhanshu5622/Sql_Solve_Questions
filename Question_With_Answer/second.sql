-- 2 Question

CREATE DATABASE shop_db;
USE shop_db;

CREATE TABLE Product (
    Product_id INT PRIMARY KEY,
    Product_name VARCHAR(50),
    Product_price DECIMAL(10,2)
);

CREATE TABLE Sale (
    Sale_id INT PRIMARY KEY,
    Product_id INT,
    Quantity INT,
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);



INSERT INTO Product(Product_id, Product_name, Product_price)
 VALUE 
 (1, "SmartPhone", 1200.00),
 (2, "Tablate", 10200.00),
 (3, "SmartWatch", 2200.00),
 (4, "Laptop", 100.00),
 (5, "CellPhone", 200.00);


INSERT INTO Sale( Sale_id,  Product_id, Quantity) 
VALUE 
(101, 1, 3),
(102, 2, 5),
(103, 1, 2),
(104, 4, 10),
(105, 1, 4);


-- write a query  to find the names of all product that have never been sold -- subquery method and join table


-- SELECT p.Product_name
-- FROM Product p
-- LEFT JOIN Sale s ON p.Product_id = s.Product_id
-- WHERE s.Product_id IS NULL;

SELECT Product_name
FROM Product
WHERE Product_id NOT IN (
    SELECT Product_id FROM Sale
);