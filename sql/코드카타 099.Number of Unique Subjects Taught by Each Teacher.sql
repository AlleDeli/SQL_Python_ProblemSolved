-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/
-- 2356. Number of Unique Subjects Taught by Each Teacher


SELECT teacher_id,
       COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id
