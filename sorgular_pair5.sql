select * from brand; 

select * from customers 
order by name desc;

select * from products 
where stock >10;

select * from products 
where stock >10 and category_id=1;

select * from products 
where stock >10 or category_id=3;

select name from customers 
where name in('Kadriye');

select name from customers 
where LOWER(name) in('kadrİye');

select name from customers 
where LOWER(name) in('kadriye', 'özlem öykü', 'ezcan ', 'gözde', 'gülbahar ');

select name from cargoes
where name like '%r%';

select name from cargoes
where name like '_r%';

select name from cargoes
where name like '__r%';

select * from productprices 
where salesprice between '200' and '500';

select * from products
where category_id >1;

select * from customers
where name like '%g%' or surname like '__h%';

select * from customers
where LOWER(name) like 'g%' and LOWER(surname) like '__h%'















