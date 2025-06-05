/* Write your T-SQL query statement below */
SELECT query_name 
    , ROUND(AVG(rating * 1.0 / position), 2) AS quality
    , ROUND(SUM(CASE WHEN RATING < 3 THEN 1 ELSE 0 END) * 100 * 1.0 / COUNT (rating), 2)AS poor_query_percentage
FROM Queries
GROUP BY query_name

/*
select(select count(rating) from queries where rating < 3) / count(rating)
from queries
group by query_name



SELECT query_name, COUNT (result) 
FROM Queries
GROUP BY query_name, rating
HAVING rating < 3
*/