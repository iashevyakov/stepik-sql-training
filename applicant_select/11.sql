--https://stepik.org/lesson/310418/step/12?unit=292724
SELECT name_program, name_enrollee
FROM enrollee
JOIN program_enrollee USING (enrollee_id)
JOIN program USING (program_id)
JOIN program_subject USING (program_id)
JOIN enrollee_subject ON enrollee_subject.subject_id=program_subject.subject_id AND enrollee.enrollee_id=enrollee_subject.enrollee_id
GROUP BY name_program, name_enrollee
HAVING MIN(result) = 50