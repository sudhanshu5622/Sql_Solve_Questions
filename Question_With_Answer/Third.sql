
CREATE TABLE Order_s(
Order_id INT PRIMARY KEY,
Customer_id INT,
OrderAmmount_id DECIMAL(10,2)
);

INSERT INTO Order_s( Order_id, Customer_id, OrderAmmount_id)
VALUES 
(1,101,550.00),
(2,102,150.00),
(3,103,150.00),
(4,104,450.00),
(5,105,500.00),
(6,106,250.00),
(7,107,420.00),
(8,108,820);
-- write a query to find the IDs of customer whole total order amount extinct Ekra $1000 --- group by having

SELECT Customer_id, Sum(OrderAmmount_id) AS TotalSumAmmount 
FROM Order_s
GROUP BY Customer_id
HAVING SUM(OrderAmmount_id) > 1000;