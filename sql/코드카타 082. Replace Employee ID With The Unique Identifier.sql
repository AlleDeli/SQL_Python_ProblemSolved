-- 1378. Replace Employee ID With The Unique Identifier
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

SELECT u.unique_id,
       e.name
FROM employees e LEFT JOIN employeeUNI u ON e.id=u.id
