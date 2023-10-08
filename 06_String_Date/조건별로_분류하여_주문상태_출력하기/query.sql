-- 코드를 입력하세요
SELECT  T1.ORDER_ID                             AS 'ORDER_ID'
    ,   T1.PRODUCT_ID                           AS 'PRODUCT_ID'
    ,   DATE_FORMAT(T1.OUT_DATE, '%Y-%m-%d')    AS 'OUT_DATE'
    ,   CASE
            WHEN T1.OUT_DATE <= '2022-05-01'    THEN '출고완료'
            WHEN T1.OUT_DATE IS NULL            THEN '출고미정'
            ELSE                                     '출고대기'
        END             AS '출고여부'
FROM    FOOD_ORDER T1
ORDER BY
        T1.ORDER_ID ASC
