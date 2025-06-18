-- https://stepik.org/lesson/297515/step/6?unit=279275
SELECT MIN(price) as 'Минимальная_цена', MAX(price) as 'Максимальная_цена', ROUND(AVG(price),2) as 'Средняя_цена'
FROM book;