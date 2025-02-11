use ashish;
select * from myntra;
use myntra;
-- 1. Finding the names of unique brands.
select distinct brand_name from myntra;

-- 2. Finding the number of unique brands.
select count(distinct brand_name) from myntra;

-- 3. Finding the number of products in each brand.
select count(distinct brand_tag) from myntra;
select brand_name from myntra;
select brand_name, count(brand_name) as 'no_of_products',
count(distinct product_tag) as 'no_of_product_categories'
from myntra group by brand_name
order by no_of_products desc limit 10;
select brand_name, count(brand_name) as 'no_of_products',
count(distinct product_tag) as 'no_of_product_categories'
from myntra group by brand_name
order by no_of_product_categories desc limit 10;
select brand_name, count(product_tag), counnt(rating_count) from myntra group by brand_name;
-- Top ten brands with most number of products.
select brand_name, count(brand_name) as 'no_of_products'
from myntra group by brand_name
order by no_of_products desc limit 10;

-- 4. Top ten brands based on product categories.
select brand_name, count(distinct product_tag) as'no_product_categories' from myntra group by brand_name
order by no_of_product_categories desc limit 10;

-- 5. Top 10 brands with most no of products sold.
select brand_name, sum(rating_count) as 'product_sold'
 from myntra group by brand_name
 order by product_sold desc limit 10;
select brand_name, sum(rating_count) as 'product_sold'
 from mynta group by brand_name order by product_sold desc limit 10;
 
 -- 6. Top 10 brands with maximum no of revenue generated.
 select brand_name,
sum(discounted_price * rating_count) as 'revenue'from myntra group by brand_name order by revenue desc limit 10;
 
-- 7. Top 10 most expensive brands.
select brand_name, round(avg(discounted_price),0)
from myntra group by brand_name order by avg (discounted_price)desc limit 10;

-- 8. Top 10 product categories which has generated maximum revenue.
 select product_tag,sum(rating_count),
sum( rating_count* discounted_price)
 as 'revenue'from myntra group by product_tag
 order by revenue desc limit 10;

-- Top 10 most expensive product categories.
select product_tag, round(avg(discounted_price),0), max(discounted_price), min(discounted_price)
from myntra group by product_tag order by avg (discounted_price)desc limit 10;




