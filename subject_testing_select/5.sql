--https://stepik.org/lesson/310421/step/6?unit=292727
SELECT name_subject, COUNT(DISTINCT(student_id)) as 'Количество'
FROM subject
LEFT JOIN attempt USING (subject_id)
GROUP BY name_subject
ORDER BY 2 DESC, 1