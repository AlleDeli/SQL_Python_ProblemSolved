-- https://school.programmers.co.kr/learn/courses/30/lessons/164671

SELECT b.FILE_PATH
FROM 
    (SELECT *,
           RANK() OVER(ORDER BY VIEWS Desc) as rank1
    FROM used_goods_board
    ) as a
INNER JOIN
    (SELECT board_id,
            file_id,
           CONCAT('/home/grep/src/',BOARD_ID,'/', FILE_ID,FILE_NAME,FILE_EXT) as FILE_PATH
    FROM used_goods_file
    ) as b
ON a.board_id=b.board_id
WHERE rank1=1
ORDER BY b.file_id Desc
