--https://stepik.org/lesson/308891/step/14?unit=291017
SELECT YEAR(date_payment) as 'Год', MONTHNAME(date_payment) as 'Месяц', SUM(price*amount) as 'Сумма'
FROM
    buy_archive
GROUP BY YEAR(date_payment), MONTHNAME(date_payment)

UNION ALL

SELECT YEAR(date_step_end) as 'Год', MONTHNAME(date_step_end) as 'Месяц', SUM(book.price * buy_book.amount) as 'Сумма'
FROM
    book
    INNER JOIN buy_book USING(book_id)
    INNER JOIN buy USING(buy_id)
    INNER JOIN buy_step USING(buy_id)
    INNER JOIN step USING(step_id)
WHERE  date_step_end IS NOT Null and name_step = "Оплата"
GROUP BY YEAR(date_step_end), MONTHNAME(date_step_end)

ORDER BY 2, 1