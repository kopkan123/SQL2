
-- Задание 1. Используя операторы языка SQL, 
-- создайте табличку “sales”. Заполните ее данными


CREATE TABLE  sales
(id INT IDENTITY(1,1) PRIMARY KEY ,
order_date DATE NOT NULL,
count_product INT DEFAULT 0
);


INSERT INTO sales (order_date, count_product)
VALUES 
	('2022-01-01', 156), ('2022-01-02', 180), ('2022-01-03', 21), 
    ('2022-01-04',124), ('2022-01-05', 341);
    
 -- Задание 2. Сгруппируйте значений количества 
--- в 3 сегмента — меньше 100, 100-300 и больше 300 (функция IF).

 SELECT id AS "id заказа", 
 IF (count_product < 100, 'aaa', 'bbb') AS "Тип заказа"
   FROM sales;
 -- 3. Создайте таблицу “orders”, заполните ее значениями

CREATE TABLE IF NOT EXISTS orders
(id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(10) NOT NULL,
amount FLOAT (3,2), 
order_status VARCHAR(15)
);

SELECT * FROM orders;

INSERT orders(id, employee_id, amount, order_status)
VALUES
(1, 'e03', 15.0, 'OPEN'),
(2, 'e01', 25.50, 'OPEN'),
(3, 'e05', 100.70, 'CLOSED'),
(4, 'e02', 22.18, 'OPEN'),
(5, 'e04', 9.50, 'CANCELLED');

-- 4. Выберите все заказы. 
-- В зависимости от поля order_status выведите столбец
full_order_status:
OPEN – «Order is in open state»; 
CLOSED - «Order is closed»; 
CANCELLED - «Order is cancelled»

SELECT
id,
employee_id, 
amount, 
order_status,
	IF (order_status = 'OPEN', 'Order is in open state',
		IF (order_status = 'CLOSED', 'Order is closed',
			IF (order_status = 'CANCELLED', 'Order is cancelled', 'Неопределено')))
	AS full_order_status
    FROM orders;
-- 5. Чем 0 отличается от null в sql?
-- 0-это числовое значение, а NULL-нет, это специальное значение равное "значение не определено"
