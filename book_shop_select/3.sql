--https://stepik.org/lesson/308891/step/7?unit=291017
SELECT name_city, COUNT(*) as 'Количество'
FROM city JOIN client USING (city_id)
JOIN buy USING (client_id)
GROUP BY name_city
ORDER BY 'Количество' DESC, name_city;