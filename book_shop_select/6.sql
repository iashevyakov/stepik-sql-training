--https://stepik.org/lesson/308891/step/10?unit=291017
SELECT buy_id, name_step
FROM buy_step JOIN step USING (step_id)
WHERE date_step_beg IS NOT Null AND date_step_end IS Null
ORDER BY buy_id