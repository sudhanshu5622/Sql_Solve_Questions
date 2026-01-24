 CREATE TABLE Sales (
    Sale_id INT PRIMARY KEY,
    Sale_date DATE,
    Ammount INT
);

INSERT INTO Sales (Sale_id, Sale_date, Ammount)
VALUES 
(1, '2024-11-01', 150),
(2, '2023-10-03', 200),
(3, '2023-03-03', 359),
(4, '2024-11-04', 420),
(5, '2024-01-05', 275),
(6, '2023-12-01', 150),
(7, '2024-12-01', 200),
(8, '2024-01-01', 150);

SELECT * FROM Sales;
-- write a query to find the totle sales ammount for each month of the year 2023.

-- SELECT SUM(Ammount) AS totalSum2023
-- FROM Sales
-- WHERE YEAR(Sale_date) = 2023;

SELECT 
    MONTH(Sale_date) AS Sale_Month,
    SUM(Ammount) AS Total_Sales
FROM Sales
WHERE YEAR(Sale_date) = 2023
GROUP BY MONTH(Sale_date)
ORDER BY MONTH(Sale_date);