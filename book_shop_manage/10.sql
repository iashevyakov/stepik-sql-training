--https://stepik.org/lesson/310417/step/11?unit=292723
UPDATE buy_step, step SET date_step_end='2021-01-01'
WHERE buy_step.step_id=step.step_id AND step.name_step='Упаковка';