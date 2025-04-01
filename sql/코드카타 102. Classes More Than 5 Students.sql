-- https://leetcode.com/problems/classes-more-than-5-students/
-- 596. Classes More Than 5 Students


WITH classes as (
SELECT class,
       COUNT(class) as cnt
FROM Courses
GROUP BY class
)
SELECT class
FROM classes
WHERE cnt >= 5
