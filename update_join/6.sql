--https://stepik.org/lesson/308887/step/7?unit=291013
DELETE FROM genre WHERE genre_id IN (SELECT genre_id FROM book GROUP BY genre_id HAVING COUNT(title) < 4);