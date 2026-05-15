create database zomato ;

use zomato;

create table food(
f_id varchar(255),
item varchar(255),
veg_or_non_veg varchar(255));

show variables like 'secure_file_priv';

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/food.csv"
into table food
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;

create table menu(
menu_id varchar(255),
r_id varchar(255),
f_id varchar(255),
cuisine varchar(255),
price int );

SET GLOBAL net_read_timeout = 600;
SET GLOBAL net_write_timeout = 600;
SET GLOBAL wait_timeout = 600;
SET GLOBAL interactive_timeout = 600;

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/menu.csv"
into table menu
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;

create table orders(
order_date	varchar(255),				
sales_qty int,
sales_amount int,
currency varchar(255),
user_id varchar(266),
r_id varchar(277));

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv"
into table orders
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;

create table orders_Type(
Order_Id varchar(255),
Order_type varchar(266));

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders_Type.csv"
into table orders_Type
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;

create table restaurant(
id varchar(255),
name varchar(255),
Country varchar(255),
city varchar(255),
rating	varchar(255),
rating_count varchar (255),
cuisine	 varchar(255),
link varchar(255),
address varchar(255));

load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/restaurant.csv"
into table restaurant
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows
;
