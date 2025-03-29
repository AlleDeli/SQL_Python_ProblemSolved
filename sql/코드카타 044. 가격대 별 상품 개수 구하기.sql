-- https://school.programmers.co.kr/learn/courses/30/lessons/131530

SELECT 
    CASE WHEN price >= 80000 THEN '80000'
         WHEN price >= 70000 THEN '70000'
         WHEN price >= 60000 THEN '60000'
         WHEN price >= 50000 THEN '50000'
         WHEN price >= 40000 THEN '40000'
         WHEN price >= 30000 THEN '30000'
         WHEN price >= 20000 THEN '20000'
         WHEN price >= 10000 THEN '10000'
    ELSE 0 END As 'PRICE_GROUP',
    COUNT(product_id) As products
FROM product
GROUP BY 1
ORDER BY 1
