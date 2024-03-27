-- 코드를 입력하세요

SET     @p_UseDate      := CONVERT('2022-10-16', DATETIME);

SELECT  CAR_ID
    ,   CASE    WHEN    SUM(
                            CASE    WHEN T1.START_DATE <= @p_UseDate AND @p_UseDate <= T1.END_DATE    THEN 1
                                    ELSE 0
                            END
                        ) > 0   THEN '대여중'
                ELSE    '대여 가능'
        END AS 'AVAILABILITY'
FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY T1
GROUP BY
        T1.CAR_ID
ORDER BY
        T1.CAR_ID  DESC