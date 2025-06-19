--https://stepik.org/lesson/310417/step/10?unit=292723
SET @buy_id = 5, @dt = '2020-04-13', @step=CONVERT('Оплата' USING utf8mb4);

UPDATE buy_step, step SET date_step_end=@dt
WHERE buy_step.step_id=step.step_id and buy_step.buy_id=@buy_id and step.name_step=@step;


UPDATE buy_step SET date_step_beg=@dt
WHERE step_id=(SELECT step_id + 1 FROM step WHERE name_step=@step) AND buy_id=@buy_id;