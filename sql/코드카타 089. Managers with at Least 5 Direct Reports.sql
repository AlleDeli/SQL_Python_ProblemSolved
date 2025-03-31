--  https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- 570. Managers with at Least 5 Direct Reports

WITH managers as (
SELECT managerid as id,
       COUNT(managerID) as cnt
FROM Employee
GROUP BY managerid
)
SELECT e.name
FROM Employee e INNER JOIN managers m
ON e.id = m.id
WHERE cnt >= 5
