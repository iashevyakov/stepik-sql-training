--https://stepik.org/lesson/308887/step/9?unit=291013
DELETE FROM author
USING
author INNER JOIN supply ON author.name_author=supply.author;