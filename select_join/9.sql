--https://stepik.org/lesson/308886/step/10?unit=291012
SELECT name_author, name_genre
FROM author
INNER JOIN book USING(author_id)
INNER JOIN genre USING (genre_id)
GROUP BY name_author, name_genre
HAVING SUM(price * amount) > 2000;