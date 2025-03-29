-- 1193. Monthly Transactions I
-- https://leetcode.com/problems/monthly-transactions-i/description/

SELECT DATE_FORMAT(trans_date, '%Y-%m') As month,
       country,
       COUNT(*) as trans_count,
       COUNT(CASE WHEN state = 'approved' THEN 1 END) As approved_count,
       SUM(amount) as trans_total_amount,
       SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) As approved_total_amount
FROM Transactions
GROUP BY month, country
