-- 코드를 입력하세요
SELECT  T1.PRICE    AS MAX_PRICE
FROM    PRODUCT T1
ORDER BY
        T1.PRICE    DESC
LIMIT   1