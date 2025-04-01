-- https://leetcode.com/problems/immediate-food-delivery-ii/
-- 1174. Immediate Food Delivery II


WITH daterank as (
SELECT delivery_id,
       customer_id,
       order_date,
       customer_pref_delivery_date,
       ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date) as rank1
FROM Delivery
)

SELECT ROUND((COUNT(CASE WHEN deli_status = 'immediate' THEN 1 END) / COUNT(*)) * 100, 2) as immediate_percentage
FROM
(
SELECT delivery_id,
       customer_id,
       CASE 
            WHEN order_date = customer_pref_delivery_date THEN 'immediate'
            ELSE 'scheduled' END As deli_status
FROM daterank
WHERE rank1 = 1
) as a
