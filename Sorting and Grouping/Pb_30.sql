# Write your MySQL query statement below

SELECT
    customer_id
FROM CUSTOMER
GROUP BY CUSTOMER_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(DISTINCT product_key) FROM Product);