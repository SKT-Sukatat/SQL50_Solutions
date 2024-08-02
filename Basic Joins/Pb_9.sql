-- Solution 1 By _Tanmay
-- Write your MySQL query statement below

SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature;



-- Soluntion 2 By himanshu__mehra__
-- Write your MySQL query statement below

SELECT w2.id
FROM weather w1
JOIN weather w2
ON DATEDIFF (w1.recordDate ,w2.recordDate ) = -1 -- YESTERDAY - TODAY = -1
AND w2.temperature > w1.temperature; -- TODAY.Tempearture > YESTERDAY.Temperature