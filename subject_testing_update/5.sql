--https://stepik.org/lesson/310422/step/6?unit=292728
DELETE FROM attempt
WHERE subject_id IN
(
    SELECT subject_id FROM subject WHERE name_subject IN ('Основы баз данных', 'Основы SQL')
)
