--https://stepik.org/lesson/308887/step/4?unit=291013
INSERT INTO book (title, author_id, price, amount)
SELECT title, author_id, price, amount
FROM
    author
    INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;

SELECT * from book;