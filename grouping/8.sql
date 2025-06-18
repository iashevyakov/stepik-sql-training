-- https://stepik.org/lesson/297515/step/9?unit=279275
SELECT author
FROM book
WHERE price > 500
GROUP by author
HAVING MAX(amount) BETWEEN 10 AND 15;