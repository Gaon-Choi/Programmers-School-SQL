-- 코드를 입력하세요
SELECT  SALES_DATE
    ,   PRODUCT_ID
    ,   USER_ID
    ,   SALES_AMOUNT
FROM
(
    SELECT  DATE_FORMAT(TT1.SALES_DATE,"%Y-%m-%d")  AS SALES_DATE
        ,   TT1.PRODUCT_ID                          AS PRODUCT_ID
        ,   TT1.USER_ID                             AS USER_ID
        ,   TT1.SALES_AMOUNT                        AS SALES_AMOUNT
    FROM    ONLINE_SALE     TT1
    UNION
    SELECT  DATE_FORMAT(TT2.SALES_DATE,"%Y-%m-%d")  AS SALES_DATE
        ,   TT2.PRODUCT_ID                          AS PRODUCT_ID
        ,   NULL                                    AS USER_ID
        ,   TT2.SALES_AMOUNT                        AS SALES_AMOUNT
    FROM    OFFLINE_SALE     TT2
) T1
WHERE   YEAR(T1.SALES_DATE)     = 2022
    AND MONTH(T1.SALES_DATE)    = 3
ORDER BY
        SALES_DATE  ASC
    ,   PRODUCT_ID  ASC
    ,   USER_ID     ASC