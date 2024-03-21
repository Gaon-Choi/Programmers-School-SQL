-- 코드를 작성해주세요
SELECT  YEAR(T1.YM)                 AS 'YEAR'
    ,   ROUND(AVG(T1.PM_VAL1), 2)   AS 'PM10'
    ,   ROUND(AVG(T1.PM_VAL2), 2)   AS 'PM2.5'
FROM    AIR_POLLUTION T1
WHERE   T1.LOCATION1    = '경기도'
    AND T1.LOCATION2    = '수원'
GROUP BY
        YEAR(T1.YM)
ORDER BY
        YEAR(T1.YM)