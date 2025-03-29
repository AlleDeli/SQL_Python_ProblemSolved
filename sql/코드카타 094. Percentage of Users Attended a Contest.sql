-- 1633. Percentage of Users Attended a Contest
-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/

SELECT contest_id,
       ROUND((COUNT(r.user_id) / a.cnt ) * 100, 2) as percentage
FROM Register r 
CROSS JOIN 
        (SELECT user_id,
            COUNT(*) as cnt
        FROM Users) as a
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
