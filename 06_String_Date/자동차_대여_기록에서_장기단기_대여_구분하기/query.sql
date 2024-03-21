-- 코드를 입력하세요
SELECT  T1.HISTORY_ID   AS 'HISTORY_ID'
    ,   T1.CAR_ID       AS 'CAR_ID'
    ,   DATE_FORMAT(T1.START_DATE, '%Y-%m-%d')  AS 'START_DATE'
    ,   DATE_FORMAT(T1.END_DATE, '%Y-%m-%d')    AS 'END_DATE'
    ,   CASE    WHEN TIMESTAMPDIFF(DAY, T1.START_DATE, T1.END_DATE) >= 29 THEN '장기 대여'
                ELSE '단기 대여'
        END AS 'RENT_TYPE'
FROM    CAR_RENTAL_COMPANY_RENTAL_HISTORY T1
WHERE   YEAR(T1.START_DATE)     = 2022
    AND MONTH(T1.START_DATE)    = 9
ORDER BY
        T1.HISTORY_ID   DESC