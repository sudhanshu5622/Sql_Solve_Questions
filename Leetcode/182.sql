-- # Write your MySQL query statement below
-- SELECT email AS Email
-- FROM Person
-- GROUP BY email
-- HAVING COUNT(email) > 1;
-- SELECT DISTINCT email AS Email
-- FROM Person
-- WHERE email IN (
--     SELECT email
--     FROM Person
--     GROUP BY email
--     HAVING COUNT(*) > 1
-- );

SELECT DISTINCT EmaiL AS email
FROM Person
GROUP BY email
HAVING COUNT(*)>1
