--https://stepik.org/lesson/310421/step/7?unit=292727
SELECT question_id, name_question FROM question
JOIN subject USING (subject_id)
WHERE name_subject='Основы баз данных'
ORDER BY RAND()
LIMIT 3