--https://stepik.org/lesson/308891/step/12?unit=291017
SELECT DISTINCT(name_client)
FROM client
JOIN buy USING (client_id)
JOIN buy_book USING (buy_id)
JOIN book USING (book_id)
JOIN author USING (author_id)
WHERE name_author LIKE 'Достоевский%'
ORDER BY name_client