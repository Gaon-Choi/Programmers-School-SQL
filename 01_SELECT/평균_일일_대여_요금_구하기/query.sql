-- 코드를 입력하세요
SELECT  ROUND(AVG(T1.DAILY_FEE), 0)   AS AVERAGE_FEE
FROM    CAR_RENTAL_COMPANY_CAR T1
WHERE   T1.CAR_TYPE = 'SUV'
GROUP BY
        T1.CAR_TYPE
        