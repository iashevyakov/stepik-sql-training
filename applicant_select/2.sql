--https://stepik.org/lesson/310418/step/3?unit=292724
SELECT name_program
FROM program
JOIN program_subject USING (program_id)
JOIN subject ON subject.subject_id=program_subject.subject_id AND subject.name_subject='Информатика'
ORDER BY name_program DESC