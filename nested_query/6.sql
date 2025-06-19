--https://stepik.org/lesson/297514/step/7?unit=279274
SELECT title, author, ABS(price - (SELECT AVG(price) FROM book))
FROM book;