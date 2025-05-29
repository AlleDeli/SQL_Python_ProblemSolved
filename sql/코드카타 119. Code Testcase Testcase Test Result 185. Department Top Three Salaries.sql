-- https://leetcode.com/problems/department-top-three-salaries/


WITH salranks AS(
    SELECT e.id,
       e.name,
       e.salary,
       e.departmentId,
       d.name as department,
       DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary Desc) as sal_rank
    FROM employee e INNER JOIN Department d ON e.departmentId=d.id
)
SELECT department,
       name as employee,
       salary
FROM salranks
WHERE sal_rank <= 3
