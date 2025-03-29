-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/

SELECT v.customer_id,
       COUNT(*) count_no_trans
FROM visits v LEFT JOIN transactions t ON v.visit_id=t.visit_id
WHERE transaction_id IS NULL
GROUP BY v.customer_id
