--https://stepik.org/lesson/310421/step/3?unit=292727
SELECT name_subject, COUNT(attempt_id) as 'Количество', ROUND(AVG(result), 2) as 'Среднее'
FROM subject LEFT JOIN attempt USING(subject_id)
GROUP BY name_subject
ORDER BY 3 DESC
