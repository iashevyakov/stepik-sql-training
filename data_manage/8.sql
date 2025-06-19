--https://stepik.org/lesson/305012/step/9?unit=287020
DELETE from supply WHERE author IN (SELECT author FROM book GROUP BY author HAVING SUM(amount) > 10);
