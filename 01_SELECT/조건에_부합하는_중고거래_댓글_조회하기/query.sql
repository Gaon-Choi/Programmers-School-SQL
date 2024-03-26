-- 코드를 입력하세요
SELECT  T1.TITLE                                    AS TITLE
    ,   T1.BOARD_ID                                 AS BOARD_ID
    ,   T2.REPLY_ID                                 AS REPLY_ID
    ,   T2.WRITER_ID                                AS WRITER_ID
    ,   T2.CONTENTS                                 AS CONTENTS
    ,   DATE_FORMAT(T2.CREATED_DATE, '%Y-%m-%d')    AS CREATED_DATE
FROM    USED_GOODS_BOARD T1
JOIN    USED_GOODS_REPLY T2
    ON  T2.BOARD_ID = T1.BOARD_ID
WHERE   YEAR(T1.CREATED_DATE)   = 2022
    AND MONTH(T1.CREATED_DATE)  = 10
ORDER BY
        T2.CREATED_DATE ASC
    ,   T1.TITLE        ASC