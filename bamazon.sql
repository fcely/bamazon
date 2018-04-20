 drop database if exists bamazon ;

Create Database bamazon;


use bamazon;

Create Table products(

item_id varchar(30) not null primary key,
product_name varchar(30),
department_name varchar(30),
price float,
stock_quantity float);


insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('1G', 'Cheddar Cheese 1 Pound', 'Grocery', 5, 1000);

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('2G', 'Potatoe Chips 1 Bag', 'Grocery', 3, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('3G', 'Eggs 12 Organic', 'Grocery', 5, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('4G', 'Milk 1 Gallon', 'Grocery', 4, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('5G', 'Butter Pack 4', 'Grocery', 6, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('6G', 'Bread 4 Bagguettes', 'Grocery', 12, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('7G', 'Ham', 'Grocery', 7, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('8G', 'Oranges Each', 'Grocery', .5, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('9G', 'Celery Bag', 'Grocery', 4, 1000); 

insert into products ( item_id,product_name,department_name,price,stock_quantity) 
values ('10G', 'Avocado Each', 'Grocery', 2, 1000); 


use bamazon;

select * from products