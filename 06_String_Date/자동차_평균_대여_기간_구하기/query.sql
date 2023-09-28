-- 코드를 입력하세요
SELECT  CAR_ID
    ,   AVERAGE_DURATION
FROM (
    SELECT  TT1.CAR_ID                                                  AS CAR_ID
        ,   ROUND(AVG(DATEDIFF(TT1.END_DATE, TT1.START_DATE) + 1), 1)   AS AVERAGE_DURATION
    FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY TT1
    GROUP BY
            TT1.CAR_ID
    ORDER BY
            AVERAGE_DURATION    DESC
        ,   TT1.CAR_ID          DESC
) T1
WHERE   T1.AVERAGE_DURATION >= 7.0