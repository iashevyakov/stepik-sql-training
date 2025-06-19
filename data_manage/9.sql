--https://stepik.org/lesson/305012/step/10?unit=287020
CREATE TABLE ordering AS
SELECT author, title, (SELECT AVG(amount) FROM book) as amount
FROM book
WHERE amount < (SELECT AVG(amount) FROM book);