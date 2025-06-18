--https://stepik.org/lesson/310421/step/4?unit=292727
SELECT name_student, MAX(result) as result
FROM student
JOIN attempt USING (student_id)
WHERE result = (
    SELECT MAX(result) FROM attempt
)
GROUP BY name_student
ORDER BY name_student