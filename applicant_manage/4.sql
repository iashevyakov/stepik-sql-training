--https://stepik.org/lesson/310420/step/5?unit=292726
CREATE TABLE applicant_order as
SELECT * FROM applicant
ORDER BY program_id, itog DESC;

DROP TABLE applicant;
