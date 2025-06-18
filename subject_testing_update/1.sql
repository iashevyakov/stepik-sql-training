--https://stepik.org/lesson/310422/step/2?unit=292728
INSERT INTO attempt(student_id, subject_id, date_attempt)
VALUES (
    (SELECT student_id FROM student WHERE name_student='Баранов Павел'),
    (SELECT subject_id FROM subject WHERE name_subject='Основы баз данных'),
    NOW()
)