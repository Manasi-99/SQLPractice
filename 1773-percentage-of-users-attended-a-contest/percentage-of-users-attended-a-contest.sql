/* Write your T-SQL query statement below */
SELECT contest_id, 
    ROUND(COUNT(r.user_id) * 100 * 1.0 / (SELECT COUNT(user_id) FROM Users), 2) AS percentage
FROM Register r
LEFT JOIN Users u ON r.user_id = u.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id