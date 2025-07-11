with cte as
(
SELECT  
FORMAT_DATE('%Y-%m', order_date) AS year_month,
sum(sales_amount) as total_sales,
count(distinct customer_key) as total_customers,
sum(quantity) as total_quantity
FROM `main-cedar-464414-m7.Sales_Analytics.gold_fact_sales` 
where order_date is not null
group by FORMAT_DATE('%Y-%m', order_date)
order by FORMAT_DATE('%Y-%m', order_date)
)
select cte.year_month,
sum(cte.total_sales) over(partition by SUBSTR(cte.year_month, 1, 4) order by cte.year_month) as roll_sales_partby_year from cte