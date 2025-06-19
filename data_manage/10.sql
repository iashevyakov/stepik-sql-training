--https://stepik.org/lesson/305012/step/11?unit=287020
UPDATE book,supply
SET book.price = supply.price, supply.amount = book.amount + supply.amount;