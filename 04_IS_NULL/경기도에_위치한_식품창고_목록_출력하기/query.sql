-- 코드를 입력하세요
SELECT  T1.WAREHOUSE_ID             AS WAREHOUSE_ID
    ,   T1.WAREHOUSE_NAME           AS WAREHOUSE_NAME
    ,   T1.ADDRESS                  AS ADDRESS
    ,   IFNULL(T1.FREEZER_YN, 'N')  AS FREEZER_YN
FROM    FOOD_WAREHOUSE T1
WHERE   SUBSTRING(T1.ADDRESS, 1, 3) = '경기도'
ORDER BY
        T1.WAREHOUSE_ID ASC