--https://stepik.org/lesson/308886/step/6?unit=291012
SELECT name_author, sum(amount) as 'Количество'
FROM author
LEFT JOIN book ON author.author_id=book.author_id
GROUP BY name_author
HAVING sum(amount) < 10 OR sum(amount) IS NULL
ORDER BY 2;