#Learning Between:
#Learning WildCards:

create table if not exists mimi_products(
		product_id int primary key,
        product_name varchar(50),
        product_price int
);

insert into mimi_products values
(1, "Mascara", 100),
(2, "Lip Gloss", 150),
(3, "Eye Lashes", 50),
(4, "Lip Stick", 100),
(5, "Contour", 200),
(6, "Eye Shadow", 150),
(7, "Nail Polish", 350);

select * from mimi_products where product_name like "L_%_%";



select * from mimi_products where product_name like "C%r";

select * 
from mimi_products 
where product_price between 100 AND 200;

select * 
from mimi_products 
where product_price NOT between 100 AND 200;


SELECT * FROM mimi_products
WHERE product_ID 
BETWEEN 3 AND 5;



SELECT product_name, product_price
FROM mimi_products
WHERE product_price IN (100, 150);