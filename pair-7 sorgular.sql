select * from product_orders;

-- Sorgu1
Select AVG(total_price) as "Ortalama Sipariş Tutarı" from product_orders;

--Sorgu2
select sum(total_price) as "Toplam Sipariş Tutar Özeti" from product_orders;

--SELECT SUM(unit_price)
--FROM product_orders
--WHERE id=1;

--Select AVG(quantity) as "Ortalama Sipariş Tutarı" from product_orders;

--Sorgu3
select count(id) as "Satıcı Sayısı" from sellers;

select * from shopping_basket

--sorgu4
select max(total_price) as "en pahalı ürün" from shopping_basket;

--sorgu5 
select max(discounts_id) as "en pahalı ürün" from shopping_basket;

--sorgu6 
select min(quantity) as "en az stoğu olan ürün" from product_orders;

--sorgu7
select distinct (products_id) from product_orders

--sorgu8
select * from products;
select categories_id from products 
group by categories_id

--sorgu9 
Select product_colors_id,COUNT(*) as "Renk Sayısı" from products
GROUP BY product_colors_id
having count(*) >1;

--sorgu10
select rating, count(*) from sellers
group by rating
having count(*) > 1

--sorgu11
select follower_count from sellers
group by follower_count
having count(*) >1

--sorgu12
Select quantity,id from product_orders
GROUP BY quantity ,id

--sorgu13 
select pro.id as "Ürün Numarası", quantity as "Ürün Adeti" from orders o
inner join product_orders pro
on o.id= pro.id
inner join products 
on pro.id= pro.id
group by pro.id, quantity;

--sorgu14
select product_colors_id, p.name as "Ürün İsmi", co.name as "Ürün Rengi" from products p
right join product_colors co
on p.id= co.id
group by product_colors_id, co.name, p.name 
order by product_colors_id

--sorgu15
select count(ct.name) , ct.name, sl.id  from products pr
inner join categories_name ct
on pr.categories_id = ct.id
inner join product_sellers ps
on pr.id = ps.id
inner join sellers sl
on ps.id = sl.id
group by ct.name, sl.id
order by sl.id

--sorgu16
SELECT SUM(unit_price)
FROM product_orders
WHERE id=1
