--https://stepik.org/lesson/310420/step/9?unit=292726
DELETE FROM enrollee
USING
enrollee
JOIN student USING (name_enrollee)