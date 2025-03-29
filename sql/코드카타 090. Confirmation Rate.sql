-- 1934. Confirmation Rate
-- https://leetcode.com/problems/confirmation-rate/description/

SELECT s.user_id,
       CASE WHEN c.action IS NOT NULL THEN ROUND(COUNT(CASE WHEN c.action = 'confirmed' THEN 1 END) / COUNT(c.action),2)
       ELSE 0 END As confirmation_rate
FROM Signups s LEFT JOIN confirmations c ON s.user_id=c.user_id
GROUP BY s.user_id
ORDER BY s.user_id DESC
