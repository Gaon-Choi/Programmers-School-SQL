-- 코드를 입력하세요
SELECT  T1.BOARD_ID     AS 'BOARD_ID'
    ,   T1.WRITER_ID    AS 'WRITER_ID'
    ,   T1.TITLE        AS 'TITLE'
    ,   T1.PRICE        AS 'PRICE'
    ,   CASE
            WHEN T1.STATUS = 'SALE'     THEN '판매중'
            WHEN T1.STATUS = 'RESERVED' THEN '예약중'
            WHEN T1.STATUS = 'DONE'     THEN '거래완료'
        END             AS 'STATUS'
FROM    USED_GOODS_BOARD T1
WHERE   DATE_FORMAT(T1.CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY
        T1.BOARD_ID DESC