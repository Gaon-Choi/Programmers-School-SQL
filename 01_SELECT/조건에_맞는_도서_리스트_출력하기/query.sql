-- 코드를 입력하세요
SELECT  T1.BOOK_ID                                  AS BOOK_ID
    ,   DATE_FORMAT(T1.PUBLISHED_DATE, '%Y-%m-%d')  AS PUBLISHED_DATE
FROM    BOOK T1
WHERE   YEAR(T1.PUBLISHED_DATE) = 2021
    AND T1.CATEGORY             = '인문'
ORDER BY
        T1.PUBLISHED_DATE   ASC