-- 코드를 입력하세요
SELECT  T1.CAR_TYPE
    ,   COUNT(CASE  WHEN    (T1.OPTIONS LIKE '%통풍시트%')
                        OR  (T1.OPTIONS LIKE '%열선시트%')
                        OR  (T1.OPTIONS LIKE '%가죽시트%')
                            THEN 1
             END
        )   AS 'CARS'
FROM    CAR_RENTAL_COMPANY_CAR T1
GROUP BY
        T1.CAR_TYPE
ORDER BY
        T1.CAR_TYPE ASC