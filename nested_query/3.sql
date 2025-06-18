-- https://stepik.org/lesson/297514/step/4?unit=279274
SELECT author, title, amount
FROM book
WHERE amount IN (SELECT amount FROM book GROUP BY amount HAVING COUNT(amount)=1);