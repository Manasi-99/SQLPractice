/* Write your T-SQL query statement below */
SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(ex.subject_name) AS attended_exams
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex 
    ON sub.subject_name = ex.subject_name 
    AND stu.student_id = ex.student_id
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name
--WHERE