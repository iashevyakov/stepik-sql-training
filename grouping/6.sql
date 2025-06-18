-- https://stepik.org/lesson/297515/step/7?unit=279275
SELECT ROUND(AVG(price),2) as 'Средняя_цена', ROUND(SUM(price * amount),2) as 'Стоимость'
FROM book
WHERE amount BETWEEN 5 and 14;