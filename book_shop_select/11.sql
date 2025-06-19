--https://stepik.org/lesson/308891/step/15?unit=291017
SELECT title, SUM(Количество) as 'Количество', SUM(Сумма) as 'Сумма'
FROM
(
    SELECT title, SUM(buy_book.amount) as 'Количество', SUM(book.price * buy_book.amount) as 'Сумма' FROM book
    JOIN buy_book USING (book_id)
    JOIN buy_step USING (buy_id)
    JOIN step USING (step_id)
    WHERE name_step = 'Оплата' AND date_step_end IS NOT NULL
    GROUP BY title
    UNION
    SELECT title, SUM(buy_archive.amount) as 'Количество', SUM(buy_archive.price * buy_archive.amount) as 'Сумма'
    FROM book JOIN buy_archive USING (book_id)
    GROUP BY title
) as year_buys
GROUP BY title
ORDER BY 3 DESC