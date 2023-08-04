
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
 
