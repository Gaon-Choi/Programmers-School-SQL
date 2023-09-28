-- 코드를 입력하세요
SELECT  T1.FLAVOR  AS FLAVOR
FROM    FIRST_HALF T1
JOIN    ICECREAM_INFO T2
    ON  T2.FLAVOR = T1.FLAVOR
WHERE   T1.TOTAL_ORDER      > 3000
    AND T2.INGREDIENT_TYPE  = 'fruit_based'
ORDER BY
        T1.TOTAL_ORDER DESC