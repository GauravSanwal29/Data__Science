create database company;

show databases;

use company;

create table company_data(
order_id int primary key,
customer_name varchar (50),
city varchar (40),
category varchar (50),
product_name varchar (40),
price int,
quantity int,
order_date varchar (50),
payment_mode varchar (50));

insert into company_data(order_id, customer_name, city, category, product_name, price, quantity, order_date, payment_mode)
values(1,	"Amit", "Delhi", "Grocery",	"Milk",	50,	2,	"01-04-2026", "UPI"),
(2,	"Neha",	"Mumbai", "Snacks",	"Chips",	30,	3,	"02-04-2026", "Cash"),
(3,	"Ravi",	"Delhi",	"Grocery",	"Rice",	500, 1,	"02-04-2026", "Card"),
(4,	"Sneha", "Bangalore",	"Beverages",	"Juice",	80,	2,	"03-04-2026",	"UPI"),
(5,	"Arjun", "Delhi",	"Snacks",	"Biscuits",	40,	5,	"03-04-2026",	"Cash"),
(6,	"Priya", "Mumbai",	"Grocery",	"Wheat",	300,	1,	"04-04-2026",	"UPI"),
(7, "Karan", "Delhi", "Beverages",	"Soda",	60,	4,	"05-04-2026",	"Card"),
(8,	"Pooja", "Bangalore",	"Grocery",	"Sugar",	45,	2,	"05-04-2026",	"UPI"),
(9,	"Rahul", "Mumbai",	"Snacks",	"Namkeen",	70,	3,	"06-04-2026",	"Cash"),
(10, "Simran", "Delhi",	"Grocery",	"Oil",	150,	2,	"06-04-2026",	"Card"),
(11, "Ankit", "Bangalore",	"Snacks",	"Cookies",	90,	2,	"07-04-2026",	"UPI"),
(12, "Meena", "Delhi",	"Grocery",	"Salt",	20,	4,	"07-04-2026", "Cash"),
(13, "Vikram", "Mumbai",	"Beverages",	"Tea",	120,	1,	"08-04-2026",	"UPI"),
(14, "Riya", "Bangalore",	"Grocery",	"Flour",	200,	1,	"08-04-2026",	"Card"),
(15, "Mohit", "Delhi",	"Snacks",	"Chocolate",	100,	3,	"09-04-2026",	"UPI");

select * from company_data
where  city="Delhi" and category="Grocery";

select * from company_data
where city="Mumbai" or payment_mode="Cash";

select * from company_data
where price> 100 and quantity>= 2;

select * from company_data
where category != "snacks";


select * from company_data
where customer_name like "A%";

select * from company_data
where product_name like "O%";

select * from company_data
where customer_name like "%a";

select * from company_data
where payment_mode= "UPI";

select * from company_data
where city!= "Delhi";

select * from  company_data
order by price desc
limit 5;

select * from company_data
order by price desc,quantity asc;

select * from company_data
order by order_date desc
limit 3 offset 1;

select city, COUNT(order_id) as total_orders
from company_data
group by city;

select category, sum(price) as total_revenue
from company_data
group by category;

select category, sum(price) as total_revenue
from company_data
group by category
having sum(price)>500;

select payment_mode, count(order_id)
from company_data
group by payment_mode;

select city, count(order_id)
from company_datazomato_dataset
group by city
having count(order_id)>3;