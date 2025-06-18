--https://stepik.org/lesson/308891/step/11?unit=291017
SELECT buy_id, DATEDIFF(date_step_end, date_step_beg) as 'Количество_дней',
IF(DATEDIFF(date_step_end, date_step_beg) > days_delivery,
   DATEDIFF(date_step_end, date_step_beg) - days_delivery, 0) AS 'Опоздание'
FROM city
JOIN client USING (city_id)
JOIN buy USING (client_id)
JOIN buy_step USING (buy_id)
JOIN step USING (step_id)
WHERE name_step = 'Транспортировка' AND date_step_end IS NOT Null
ORDER BY buy_id