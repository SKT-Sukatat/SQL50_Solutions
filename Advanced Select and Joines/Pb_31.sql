# Write your MySQL query statement below

SELECT
    e1.employee_id,
    e1.name,
    COUNT(e2.reports_to) reports_count,
    ROUND(SUM(e2.age) / COUNT(DISTINCT e2.employee_id),0) average_age
FROM Employees e1, Employees e2
WHERE e1.employee_id = e2.reports_to
GROUP BY e1.employee_id;