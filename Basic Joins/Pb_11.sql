# Write your MySQL query statement below

SELECT name, bonus
FROM Employee E
LEFT JOIN Bonus B
USING(empID)
WHERE bonus < 1000 or Bonus is NULL;