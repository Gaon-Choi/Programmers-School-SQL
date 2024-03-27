-- 코드를 입력하세요
SET     @p_StartDate    := CONVERT('2022-08-01', DATETIME);
SET     @p_EndDate      := CONVERT('2022-10-31', DATETIME);

SELECT  MONTH(T1.START_DATE)    AS 'MONTH'
    ,   CAR_ID
    ,   COUNT(*)                AS 'RECORDS'
FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY T1
WHERE   T1.START_DATE   >= @p_StartDate
    AND T1.START_DATE   <= @p_EndDate
    AND T1.CAR_ID IN (
        SELECT  TT1.CAR_ID
        FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY TT1
        WHERE   TT1.START_DATE   >= @p_StartDate
            AND TT1.START_DATE   <= @p_EndDate
        GROUP BY
                TT1.CAR_ID
        HAVING  COUNT(*) >= 5
    )
GROUP BY
        MONTH
    ,   T1.CAR_ID
ORDER BY
        MONTH       ASC
    ,   T1.CAR_ID   DESC