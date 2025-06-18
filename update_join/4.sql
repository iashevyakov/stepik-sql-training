--https://stepik.org/lesson/308887/step/5?unit=291013
UPDATE book
SET genre_id=
      (
       SELECT genre_id
       FROM genre
       WHERE name_genre = 'Поэзия'
      )
WHERE title = 'Стихотворения и поэмы';

UPDATE book
SET genre_id=
      (
       SELECT genre_id
       FROM genre
       WHERE name_genre = 'Приключения'
      )
WHERE title = 'Остров сокровищ';