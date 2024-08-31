# Write your MySQL query statement below

SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y <= z THEN 'No'
        WHEN z + y <= x THEN 'No'
        WHEN x + z <= y THEN 'No'
        WHEN x < 0 or y < 0 or z < 0 THEN 'No'
        ELSE 'Yes'
    END AS triangle
FROM Triangle;