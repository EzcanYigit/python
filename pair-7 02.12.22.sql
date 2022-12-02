
--1
INSERT INTO customers (name, surname, email, phone)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany'
--2
INSERT INTO Customers (name, surname, email, phone)
VALUES ('Ömer', 'Adıgüzel', 'omer@etiya.com', '05443526')
---
select * from customers
--
--3
CREATE TABLE suppliers (
    company_name datatype character varying,
    email datatype character varying,
    stock datatype integer,   
);

--4
UPDATE customers
SET name = 'Alfred', surname= 'Schmidt'
WHERE id = 1

--5 Daha hızlın veri getirmeye yarar, kolay filtrelenebilir hala getirmek. Verilerin sıralı tutulmasını yarayan indextir.
CREATE INDEX index_customers
ON customers (name, surname)

--6 
select name from product_colors
order by name LIMIT 3

--7  
select total_price from shipping_company s 
full outer join product_basket p
on s.id = p.id
full outer join product_orders pr
on p.id = pr.id
order by total_price

--8
group by total-price
having count(producttotal_price) <5;
order by total_price

--9
select total_price from shipping_company s 
full outer join product_basket p
on s.id = p.id
full outer join product_orders pr
on p.id = pr.id
group by total_price
having (pr.total_price) >400 
order by pr.total_price

--10
select p.quantity from product_sellers p
group by p.quantity 
having p.quantity >10

--11
select p.unit_price , count(*) from product_sellers p
group by p.unit_price
having p.unit_price>100

--12
select * from shipping_company

--13
Select MAX(quantity) as "En pahalı sipariş" from product_sellers

--14
Select unit_price as "En pahalı kargo şirketi" from product_sellers
order by unit_price desc
limit 3;

--15
select * from customers 
where name = 'emre' and not surname = 'öney' 

