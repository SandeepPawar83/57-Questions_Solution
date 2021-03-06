show tables;
/* solution for Q - 1    */	
select * from shippers;

/* solution for Q - 2    */	
select category_name, description from categories;

/* solution for Q - 3    */	
select 
	first_name,
    last_name,
    hire_date
  from employees
  where title = 'Sales Representative';

/* solution for Q - 4    */	  
select 
	first_name,
    last_name,
    hire_date
  from employees
  where title = 'Sales Representative' and country = 'USA';
  
  /* solution for Q - 5    */	
  select order_id, order_date from orders
  where employee_id = 5;
  
  /* solution for Q - 6    */	
  select supplier_id, contact_name, contact_title from suppliers
  where contact_title != 'Marketing Manager';
  
  /* solution for Q - 7    */	
  select product_id, product_name from products
  where product_name like '%queso%';
  
  /* solution for Q - 8    */	
  select 
	order_id,
    customer_id,
    ship_country
  from orders
  where ship_country = 'France' or ship_country = 'Belgium';
  
  /* solution for Q - 9    */	
  select 
	order_id,
    customer_id,
    ship_country
  from orders
  where ship_country in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');
  
  /* solution for Q - 10    */
  select 
	first_name,
    last_name,
    title,
    birth_date
  from employees
  order by birth_date asc;
  
  /* solution for Q - 12    */
  select 
	first_name,
    last_name,
    concat(first_name, ' ', last_name) as Full_name
from employees;
  
  /* solution for Q - 13    */
  select 
	order_id,
    product_id,
	unit_price,
    quantity,
    unit_price * quantity as Total_price
  from order_details
	order by order_id and product_id;
  
  /* solution for Q - 14    */
  select count(customer_id) from customers;
  
  /* solution for Q - 15    */
 select 
	order_date
  from orders
  order by order_date asc;
  
  /* solution for Q - 16    */
 select distinct country from customers;
 
 /* solution for Q - 17    */
 select contact_title, count(contact_title) from customers
 group by contact_title;

/* solution for Q - 18    */
select 
	product_id,
    product_name,
    company_name
	from products
    Join suppliers on products.company_name = suppliers.supplier_id;