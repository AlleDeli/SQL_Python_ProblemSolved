-- https://school.programmers.co.kr/learn/courses/30/lessons/164673

SELECT title,
       board_id,
       reply_id,
       writer_id,
       contents,
       CREATED_DATE
FROM( SELECT b.title,
           b.board_id,
           r.reply_id,
           r.writer_id,
           r.contents,
           DATE_FORMAT(r.created_date,'%Y-%m-%d') as CREATED_DATE,
           DATE_FORMAT(b.created_date,'%Y-%m-%d') as CREATED_DATE1
    FROM used_goods_board b INNER JOIN used_goods_reply r on b.board_id=r.board_id
    ) as a
WHERE CREATED_DATE1 LIKE '2022-10%'
ORDER BY CREATED_DATE, b.title
