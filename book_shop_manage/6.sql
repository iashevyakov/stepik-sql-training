--https://stepik.org/lesson/310417/step/7?unit=292723
CREATE TABLE buy_pay AS
SELECT buy_id, SUM(buy_book.amount) as 'Количество', SUM(buy_book.amount * book.price) as 'Итого'
FROM buy_book JOIN book USING (book_id)
WHERE buy_book.buy_id=5;