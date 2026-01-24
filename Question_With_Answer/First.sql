CREATE DATABASE company_db;
USE company_db;

CREATE TABLE Employee (
    Employee_id INT PRIMARY KEY,
    Department_id INT,
    Salary DECIMAL(10,2)
);


INSERT INTO Employee (Employee_id, Department_id, Salary)
VALUES
(1, 101, 55000.00),
(2, 102, 62000.00),
(3, 103, 48000.00),
(4, 104, 75000.00),
(5, 105, 51000.00);


SELECT * FROM Employee;


-- find a second height salary form this table 

SELECT MAX(Salary) AS Second_Height_salary 
FROM Employee
WHERE Salary < (SELECT MAX(Salary)FROM 	Employee);

SELECT * FROM Employee