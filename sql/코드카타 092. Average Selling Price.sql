-- https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

WITH joined AS(
    SELECT 
       p.product_id,
       p.start_date,
       p.end_date,
       p.price,
       SUM(COALESCE(u.units,0)) AS sum_units
    FROM prices p
    LEFT JOIN unitssold u
    ON u.product_id = p.product_id
    AND (u.purchase_date BETWEEN p.start_date AND p.end_date)
    GROUP BY 1,2,3,4
)
, join2 AS(
    SELECT product_id,
        start_date,
        end_date,
        price * sum_units AS total_price,
        sum_units
    FROM joined
    GROUP BY 1,2,3
)
SELECT product_id,
       COALESCE(ROUND((SUM(total_price) / SUM(sum_units)),2),0) AS average_price
FROM join2
GROUP BY 1
