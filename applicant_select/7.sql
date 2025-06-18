--https://stepik.org/lesson/310418/step/8?unit=292724
SELECT name_department, name_program, plan, COUNT(*) as 'Количество', ROUND(COUNT(*)/plan, 2) as 'Конкурс'
FROM department
JOIN program USING (department_id)
JOIN program_enrollee USING (program_id)
GROUP BY name_department, name_program, plan
ORDER BY 5 DESC