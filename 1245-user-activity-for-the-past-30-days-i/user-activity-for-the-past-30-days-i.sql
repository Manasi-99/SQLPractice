/* Write your T-SQL query statement below */
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
GROUP BY activity_date
HAVING activity_date BETWEEN DATEADD(DAY, -29, '2019-07-27') AND '2019-07-27' 
