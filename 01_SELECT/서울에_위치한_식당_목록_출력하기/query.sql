-- 코드를 입력하세요
SELECT  T2.REST_ID                      AS REST_ID
    ,   T2.REST_NAME                    AS REST_NAME
    ,   IFNULL(T2.FOOD_TYPE, '')        AS FOOD_TYPE
    ,   IFNULL(T2.FAVORITES, 0)         AS FAVORITES
    ,   IFNULL(T2.ADDRESS, '')          AS ADDRESS
    ,   ROUND(
            AVG(IFNULL(T1.REVIEW_SCORE, 0))
        ,   2
        )                               AS SCORE
FROM    REST_REVIEW T1
JOIN    REST_INFO   T2
    ON  T2.REST_ID = T1.REST_ID
WHERE   T2.ADDRESS LIKE '서울%'
GROUP BY
        T2.REST_ID
ORDER BY
        SCORE           DESC
    ,   T2.FAVORITES    DESC