-- 코드를 작성해주세요
SELECT  T1.ID   AS ID
    ,   CASE
            WHEN    T1.PERCENTAGE <= 0.25   THEN 'CRITICAL'
            WHEN    T1.PERCENTAGE <= 0.50   THEN 'HIGH'
            WHEN    T1.PERCENTAGE <= 0.75   THEN 'MEDIUM'
            ELSE    'LOW'
        END AS COLONY_NAME
FROM
(
    SELECT  ID
        ,   PERCENT_RANK() OVER (ORDER BY TT1.SIZE_OF_COLONY DESC)    AS PERCENTAGE
    FROM    ECOLI_DATA TT1
) T1
ORDER BY
        T1.ID   ASC