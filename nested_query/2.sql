-- https://stepik.org/lesson/297514/step/3?unit=279274
SELECT author, title, price
FROM book
WHERE price - (SELECT MIN(price) from book) <= 150
ORDER BY price;