use aashu;

SELECT *
FROM Product
WHERE type='laptop';

-- query the total quantity of products from store with storeid 8 in the shopping cart
SELECT SUM(quantity) AS totalQuantity
FROM Save_to_Shopping_Cart
WHERE Save_to_Shopping_Cart.pid IN (SELECT Product.pid FROM Product WHERE sid=8);alter

select *
from users
where name='Dahlia Walls' AND phonenumber='953-437-1177'

select *
from Buyer

select *
from address 
where city="montreal" OR city="ottawa"

select *
from address
where NOT province="ontario"



select province,city
from address
where province="quebec" OR CITY="DALY"

select expirydate
from Bankcard
order by  expirydate desc

select city
from address
where city IS NULL

select province
from address
where province IS NOT NULL

select min(userid)
from creditcard
where userid='5'

select max(totalamount)
from orders

select sum(quantity)
from save_to_shopping_cart

select avg(totalamount)
from orders

select city
from address
where city like "%a"

select city
from address
where city like "s%"

select city AS CITYNAME
from address
where city='Daly' OR city='Tay' OR city='montreal' OR city='sooke' 
 
CREATE TABLE review
(
    userid INT NOT NULL
    ,name VARCHAR(20)
    ,phoneNumber VARCHAR(20)
    ,PRIMARY KEY(userid)
);

drop table review


CREATE TABLE review
(
    userid INT NOT NULL
    ,name VARCHAR(20)
    ,phoneNumber VARCHAR(20)
    ,PRIMARY KEY(userid)
);

truncate table review;

select*
from review

select postcode
from address
group by postcode

select brand
from brand
inner join product on brand.brandname = product.brand


select brand.brandname
from after_sales_service_at
inner join Brand on after_sales_service_at.brandname = Brand.brandname


select brand.brandname
from after_sales_service_at
left join Brand on after_sales_service_at.brandname = Brand.brandname


select brand.brandname
from after_sales_service_at
right join Brand on after_sales_service_at.brandname = Brand.brandname

select *
from after_sales_service_at

select *
from brand

select brandname AS combination_of_card_and_brand
from brand
union 
select cardnumber
from bankcard

select ordernumber
from contain
union all
select itemid
from orderitem





