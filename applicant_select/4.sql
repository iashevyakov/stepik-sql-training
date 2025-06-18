--https://stepik.org/lesson/310418/step/5?unit=292724
SELECT name_program
FROM program
JOIN program_subject USING (program_id)
GROUP BY name_program
HAVING MIN(min_result)>=40
ORDER BY name_program