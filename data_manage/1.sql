--https://stepik.org/lesson/305012/step/2?unit=287020
CREATE TABLE supply (
    supply_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8,2),
    amount INT
)