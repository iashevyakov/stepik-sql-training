--https://stepik.org/lesson/310417/step/8?unit=292723
INSERT INTO buy_step(buy_id, step_id, date_step_beg, date_step_end)
SELECT buy_id, step_id, NULL, NULL
FROM buy, step
WHERE buy_id=5;