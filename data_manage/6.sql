--https://stepik.org/lesson/305012/step/7?unit=287020
UPDATE book
SET buy = IF(buy > amount, amount, buy),
   price = IF(buy=0, price *0.9, price);
