-- https://school.programmers.co.kr/learn/courses/30/lessons/164672

SELECT 
    board_id,
    writer_id,
    title,
    price,
    CASE WHEN status = 'DONE' then '거래완료'
         WHEN status = 'RESERVED' then '예약중'
         WHEN status = 'SALE' then '판매중'
    end As 'STATUS'
FROM used_goods_board
WHERE created_date like '2022-10-05%'
ORDER BY board_id desc
