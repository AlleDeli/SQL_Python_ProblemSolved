-- https://leetcode.com/problems/primary-department-for-each-employee/
-- 1789. Primary Department for Each Employee

WITH solo AS(
    SELECT employee_id,
           COUNT(*) as cnt
    FROM Employee
    GROUP BY employee_id
    HAVING cnt = 1
)
SELECT s.employee_id,
       department_id
FROM solo s INNER JOIN Employee e ON s.employee_id=e.employee_id
UNION ALL
SELECT employee_id,
       department_id
FROM Employee
WHERE primary_flag = 'Y'
