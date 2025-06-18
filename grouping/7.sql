-- https://stepik.org/lesson/297515/step/8?unit=279275
SELECT author, SUM(price*amount) as 'Стоимость'
FROM book
WHERE title NOT IN ('Идиот', 'Белая гвардия')
GROUP by author
HAVING SUM(price * amount) > 5000
ORDER BY Стоимость DESC;