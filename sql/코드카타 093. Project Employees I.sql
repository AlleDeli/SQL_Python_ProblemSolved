-- 1075. Project Employees I
-- https://leetcode.com/problems/project-employees-i/description/

SELECT project_id,
       ROUND(sum_years / cnt_projects, 2) as average_years
FROM
(
SELECT p.project_id,
       SUM(e.experience_years) as sum_years,
       COUNT(p.project_id) as cnt_projects
FROM Employee e INNER JOIN Project p ON e.employee_id=p.employee_id
GROUP BY p.project_id
) as a
