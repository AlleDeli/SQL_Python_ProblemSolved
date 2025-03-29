-- https://school.programmers.co.kr/learn/courses/30/lessons/131114

SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS,
       if(FREEZER_YN is NULL,'N',FREEZER_YN) "FREEZER_YN"
from food_warehouse
where address like '경기%'
order by WAREHOUSE_ID
