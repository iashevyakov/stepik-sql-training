--https://stepik.org/lesson/310417/step/4?unit=292723
INSERT INTO buy_book(buy_id, book_id, amount)
SELECT 5, book_id, 2
FROM book
WHERE title='Лирика';
INSERT INTO buy_book(buy_id, book_id, amount)
SELECT 5, book_id, 1
FROM book
WHERE title='Белая гвардия';
