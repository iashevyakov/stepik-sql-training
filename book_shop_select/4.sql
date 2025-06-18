--https://stepik.org/lesson/308891/step/8?unit=291017
SELECT buy_id, date_step_end
FROM buy JOIN buy_step USING (buy_id)
WHERE step_id=1 and date_step_end IS NOT Null;