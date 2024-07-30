# Write your MySQL query statement below

SELECT customer_id, COUNT(visit_id) count_no_trans
FROM Visits
LEFT JOIN Transactions
USING(visit_id)
WHERE transaction_id IS NULL
GROUP BY customer_id;