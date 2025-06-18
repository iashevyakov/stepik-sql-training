--https://stepik.org/lesson/310418/step/6?unit=292724
SELECT name_program, plan
FROM program
WHERE plan=(
    SELECT MAX(plan) FROM program
)