CREATE TABLE customers 
(
 customer_id int ,
 customer_name varchar(255),
 
 email varchar(255),
 address varchar (255),
 phone int 
 PRIMARY KEY (customer_id)
);
CREATE TABLE products 
(
 product_id int,
 number_of_products int,
 product_type varchar(255) 
 PRIMARY KEY (product_id)


);
CREATE TABLE orders 
(
 order_id int ,
 customer_id int,
 customer_name varchar(255),
 date datetime,
 product_id int 
 PRIMARY KEY (order_id)

);
insert into customers values(12 , 'mohamed' ,'mohamed@gmail.com' ,'elmanshya' , 0121073723)
insert into customers values (3 ,'elsaid' , 'elsaid@gmail.com','eldahrya', 01245456985)
insert into customers values(4,'wael','wael@gmail.com','smoha', 0101236458)
insert into customers values(5 ,'tamer' , 'tamer@gmail.com','wardean' ,01123655693)
insert into customers values(6,'youssef','youseef@gmail.com','elhager',01012789456)
insert into customers values(7,'alio' ,'alio@gmail.com','falaky',0151256856)
insert into customers values (20,'yahia ', 'yahia.gmail.com','sidi gaber' ,0121345698)

insert into orders values(55,9,'haithm',6/8/2020,77)
insert into orders values(62,44,'jo',19/5/2020,462)
insert into orders values(74,22,'karem',5/5/2019,456)
insert into orders values(21,35,'omar',7/7/2018,775)
insert into orders values(16,66,'motasem',2/2/2020,111)
insert into orders values(47,30,'mai',3/3/2015,410)
insert into orders values(45454,10,'lala',5/9/2002,45789)
insert into orders values(454,84,'said',7/8/2008,6231)

insert into products values(200,201,'fruits')
insert into products values(13,13,'desert')
insert into products values(14,14,'desert')
insert into products values(15,15,'fruits')
insert into products values(16,16,'vegetables')
insert into products values(17,17,'vegetables')
insert into products values(125,77,'fruits')

select * from customers 
-- what is the using of ascii?
SELECT ASCII(customer_name) AS NumCodeOfFirstChar
FROM Customers;

-- what is the using of nchar?
SELECT NCHAR(65) AS NumberCodeToUnicode;

-- what is the using of concat?
SELECT CONCAT('gmail', '.com');

-- what is the using of DATALENGTH function?
SELECT DATALENGTH('W3Schools.com');

-- what can LEFT function do?
SELECT LEFT('SQL Tutorial', 3) AS ExtractString;

-- what is the using of PATINDEX function?
SELECT PATINDEX('%schools%', 'W3Schools.com');

-- what is the using of QUOTENNAME function?
SELECT QUOTENAME('abcdef');

--what is the using of REPLACE function?
SELECT REPLACE('TAMER MOHAMED', 'T', 'M');

-- what is the using of LOWER function?
SELECT LOWER(customer_name) AS LowercaseCustomerName
FROM orders;

-- what is the using of LTRIM function?
SELECT LTRIM('     SQL server') AS LeftTrimmedString;

-- what is the using of
SELECT RIGHT(product_type, 5) AS ExtractString
FROM products;

-- what is the using of RTRIM function?
SELECT RTRIM('mini store     ') AS RightTrimmedString;

-- what is the using of SOUNDEX function?
SELECT SOUNDEX('fruit'), SOUNDEX('fruity');

-- what is the using of SPACE function?
SELECT SPACE(10);

-- what is the using of STR function?
SELECT STR(186);

-- what is the using of STUFF function?
SELECT STUFF('data base', 1, 3, 'sql');

-- what is the using of SUBSTRING function?
SELECT SUBSTRING(product_type, 1, 5) AS ExtractString
FROM products;

-- what is the using of TRANSLATE function?
SELECT TRANSLATE('Monday', 'Monday', 'Sunday');

-- what is the using of TRIM function?
SELECT TRIM('#! ' FROM '    #SQL server!    ') AS TrimmedString;

select product_type , customer_name from products , orders 
where orders.product_id = products.product_id;

select email , date from customers , orders 
where orders.customer_id =customers.customer_id;

select phone , product_id from customers , orders 
where orders.customer_id =customers.customer_id;

select number_of_products , customer_name from products ,orders 
where orders.product_id = products.product_id;

select address , product_id from customers , orders
where orders.customer_id =customers.customer_id;

select customer_name from customers where customer_id in (select customer_id from orders where order_id<2);
select product_type from products where product_id in (select product_id from orders where order_id>5);
select email from customers where customer_id in (select customer_id from orders where product_id<6);

UPDATE Customers
SET customer_name = 'elsaid'
WHERE customer_id = 3;

UPDATE Customers
SET customer_id = 125
WHERE customer_name= 'mohamed';

UPDATE orders 
SET order_id = 33
WHERE product_id = 5;

UPDATE products
SET number_of_products = 13
WHERE product_id = 17;

UPDATE orders 
SET customer_name = 'wael'
WHERE order_id = 21;

DELETE FROM Customers WHERE customer_name='youssef';
DELETE FROM Customers WHERE Customer_id=4;
DELETE FROM orders WHERE order_id=45454;
DELETE FROM products WHERE product_id= 125;
DELETE FROM orders WHERE customer_name='mai';









































