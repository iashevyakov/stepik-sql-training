--https://stepik.org/lesson/310422/step/4?unit=292728
UPDATE attempt
SET attempt.result= (
    SELECT ROUND(SUM(answer.is_correct) / COUNT(answer.answer_id) * 100)
    FROM answer JOIN testing USING (answer_id)
    WHERE testing.attempt_id=8
)
WHERE attempt.attempt_id=8;