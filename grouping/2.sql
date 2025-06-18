-- https://stepik.org/lesson/297515/step/3?unit=279275
SELECT author as 'Автор', COUNT(*) as 'Различных_книг', SUM(amount) as 'Количество_экземпляров'
FROM book
GROUP BY author;