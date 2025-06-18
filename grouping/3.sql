-- https://stepik.org/lesson/297515/step/4?unit=279275

SELECT author, MIN(price) as 'Минимальная_цена', MAX(price) as 'Максимальная_цена', AVG(price) as 'Средняя_цена'
FROM book
GROUP by author;