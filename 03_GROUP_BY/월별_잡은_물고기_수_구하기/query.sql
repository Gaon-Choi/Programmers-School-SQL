-- 코드를 작성해주세요
SELECT  COUNT(
            CASE WHEN T1.LENGTH IS NOT NULL THEN 1
                 ELSE 0
            END
        )               AS 'FISH_COUNT'
    ,   MONTH(T1.TIME)  AS 'MONTH'
FROM    FISH_INFO T1
GROUP BY
        MONTH(T1.TIME)
ORDER BY
        MONTH(T1.TIME)  ASC