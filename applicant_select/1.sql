--https://stepik.org/lesson/310418/step/2?unit=292724
SELECT name_enrollee
FROM enrollee
JOIN program_enrollee USING (enrollee_id)
JOIN program USING (program_id)
WHERE name_program='Мехатроника и робототехника'
ORDER BY name_enrollee