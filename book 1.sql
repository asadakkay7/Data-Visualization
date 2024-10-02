-- create schema retailshop;
use  retailshop;
select *from online_retail;
SELECT CustomerID, 
       SUM(Quantity) AS TotalOrderValue
FROM  online_retail;
SELECT customerid, COUNT(DISTINCT stockcode) AS unique_products
FROM online_retail
GROUP BY customerid;
SELECT CustomerID, 
SUM(Quantity) AS TotalOrderValue
FROM  online_retail
group by customerid
having TotalOrderValue=1;
SELECT stockcode
FROM  online_retail
group by stockcode
having count(quantity)=max(quantity);


SELECT customerid, count(*) as ordervalue, 
case 
when count(*) >10 then "high frequency"
when count(*) between 5 and 10 then "medium frequency"
else "low frequency"
end as frequency_category
FROM  online_retail
group by customerid;
SELECT country, AVG(quantity) as average_sales
FROM online_retail
GROUP BY country;

select *from online_retail where invoicedate != date_add(curdate(), interval 6 month);



