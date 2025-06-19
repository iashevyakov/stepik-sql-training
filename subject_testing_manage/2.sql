--https://stepik.org/lesson/310422/step/3?unit=292728
INSERT INTO testing(attempt_id, question_id)
SELECT attempt_id, question_id
FROM attempt JOIN question USING (subject_id)
WHERE attempt_id=(SELECT MAX(attempt_id) FROM attempt)
ORDER BY RAND()
LIMIT 3