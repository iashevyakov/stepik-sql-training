--https://stepik.org/lesson/308886/step/3?unit=291012
SELECT name_genre FROM genre
LEFT JOIN book ON genre.genre_id=book.genre_id WHERE book_id IS NULL;