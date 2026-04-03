-- Question 
employee( employee-name, street,city) 
work(employee-name,company-name, salary)
company(company-name,city)
manages(employee-name, manager-name)
-- Question

--  1 Question
-- -- find the name, street addrese, and cityes of residence of 
-- all employeee who is work for the " first Bank
--  Cororation and earn more thean $10000".

-- solve question 1
SELECT e.employee-name, e.street, e.city
FROM employee e , work w 
WHERE e.employee-name = w.employee-name
AND company-name = "first Bank Cororation"
AND salary > 10000;


-- 2 Question
--- find the all employees in the database who ive in the same city
-- as the company for which they work.


--solve question 2
SELECT e.employee-name
FROM employee e
INNER JOIN work
ON(e.employee-name = work.employee-name)
INNER JOIN company c
ON(work.company-name = c.company-name)
WHERE e.city = c.city;

-- 3 Question
-- find the neme os all employee in the database who do not work for 
-- "first Bank Cororation" assume that all people work for the exactly one company.

-- solve question 3
SELECT e.employee-name
FROM employee e
INNER JOIN work w
ON(e.employee-name = w.employee-name)
WHERE w.comany-name != "First Bank Cororation";

-- 4 Question
-- find the names of all employee in the databease who earn more than 
-- every employee of "small Bank Corporation.";

--solve question 4
SELECT e.employee-name
FROM employee e
INNER JOIN work w
ON(e.employee-name = w.employee-name)
WHERE w.salary > ALL (
    SELECT salary
    FROM work
    WHERE company-name = "small Bank Corporation"
);

--ANOTGHEER SOLVE FOR QUESTION 4
SELECT e.employee-name
FROM work
WHERE salary > all(
    SELECT salary 
    FROM work
    WHERE conpany-name = " Small Bank Coorporation"
)

-- 5 Question
-- find the names os all employee who is the earn more than average salary
-- of all emolpyee in their company.


-- Solve question 5
SELECT e.employee-name
FROM ( SELECT company-name AS cn ,AVG(salary) AS avg_salary)
FROM work group by company-name) AS tb, work w
WHERE w.company-name = tb.cn
AND w.salary > tb.avg_salary
AND w.employee-name = e.employee-name;


-- Question 6
-- fiund the names of all comapany thats has the smalllest payroll.


-- solve question 6
SELECT company-name
FROM work
GROUP BY company-name
HAVING SUM(salary) = (
    SELECT MIN(total_payroll)
    FROM (
        SELECT company-name, SUM(salary) AS total_payroll
        FROM work
        GROUP BY company-name
    ) AS payrolls
);  

-- solve another method for question 6

SELECT company-name
FROM work
GROUP BY company-name
HAVING SUM(salary) <=all (
    SELECT SUM(salary)
    FROM work
    GROUP BY company-name
);