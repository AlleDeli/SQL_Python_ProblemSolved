-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/

SELECT id,
       SUM(num) as num
FROM 
(
    SELECT requester_id as id,
        COUNT(accepter_id) as num
    FROM RequestAccepted
    GROUP BY 1
UNION ALL
    SELECT accepter_id as id,
        COUNT(requester_id) as num
    FROM RequestAccepted
    GROUP BY 1
) as a
GROUP BY 1
ORDER BY num Desc
LIMIT 1
