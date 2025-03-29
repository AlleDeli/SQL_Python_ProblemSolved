-- https://school.programmers.co.kr/learn/courses/30/lessons/164670

SELECT user_id,
       nickname,
       전체주소,
       전화번호
FROM
(
SELECT u.user_id,
       u.nickname,
       CONCAT(city , SPACE(1), street_address1, SPACE(1), street_address2) As '전체주소',
       CONCAT(substr(u.TLNO,1,3),'-',substr(u.TLNO,4,4),'-',substr(u.TLNO,8,4)) As '전화번호', 
count(*) as count_id
FROM used_goods_board b LEFT JOIN used_goods_user u on b.writer_id=u.user_id 
GROUP BY b.writer_id
)As a
WHERE count_id >= 3
ORDER BY user_id desc
