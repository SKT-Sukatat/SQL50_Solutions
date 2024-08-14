# Write your MySQL query statement below

SELECT
    P.project_id,
    ROUND(SUM(Emp.experience_years)/COUNT(DISTINCT Emp.employee_id),2) AS average_years
FROM Project P
LEFT JOIN Employee Emp
ON P.employee_id = Emp.employee_id
GROUP BY P.project_id;