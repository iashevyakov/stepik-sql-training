--https://stepik.org/lesson/305012/step/5?unit=287020
INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
FROM supply
WHERE author NOT IN (SELECT author FROM book);