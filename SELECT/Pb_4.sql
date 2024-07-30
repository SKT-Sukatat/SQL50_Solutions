# Write your MySQL query statement below

SELECT author_id id
FROM Views
WHERE author_id = viewer_id
GROUP BY id
HAVING COUNT(viewer_id) >= 1
ORDER BY id;