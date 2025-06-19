--https://stepik.org/lesson/297514/step/6?unit=279274
SELECT title, author, amount, ((SELECT MAX(amount) FROM book) - amount) as 'Заказ'
FROM book
WHERE ((SELECT MAX(amount) FROM book) - amount) <>0;