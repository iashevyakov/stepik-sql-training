--https://stepik.org/lesson/310418/step/9?unit=292724
SELECT name_program
FROM program
JOIN program_subject USING (program_id)
JOIN subject USING (subject_id)
WHERE name_subject IN ('Математика', 'Информатика')
GROUP BY name_program
HAVING COUNT(*) = 2
ORDER BY name_program