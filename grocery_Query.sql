create table grocery_Items (
	id serial primary key,
productName varchar (150) not null,
	shopName varchar (150) not null,
	productType varchar (150) not null,
	price int default (0),
	afterDisscount int default (0),
	afterTax int default (0),
	status boolean default false
)
select * from grocery_Items
	(/* 10 Rows Insert using Multiple Insert Query */)
insert into grocery_Items 
	(productname,shopname,producttype,price,afterdisscount,aftertax,status)
values 
	('Apples','Amazon','Fruits',100,90,95,true),
	('Bananas','Flipkart','Fruits',60,55,60,false),
	('Oranges','Market','Fruits',50,35,45,true),
	('Grapes','Amazon','Fruits',130,110,125,true),
	('Lettuce','Dmart','Veg',200,185,200,false),
	('Spinach','Relience','Veg',150,135,145,true),
	('Mushrooms','Amazon','Veg',500,480,490,true),
	('Carrots','Market','Veg',120,100,110,true),
	('Tomatoes','Flipkart','Veg',60,55,65,false),
	('Onions','Amazon','Veg',120,115,120,true)
select * from grocery_Items
(/* 40 Rows Insert using Copy Query */)
copy grocery_Items from 'E:\DA8\SQL\Day_3\grocery_Task.csv' DELIMITER ',' CSV header
select * from grocery_Items
