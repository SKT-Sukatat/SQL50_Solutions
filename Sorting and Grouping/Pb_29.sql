# Write your MySQL query statement below
WITH disticnt_number AS
(
    SELECT
        IFNULL(num, null) num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT MAX(num) num FROM disticnt_number;