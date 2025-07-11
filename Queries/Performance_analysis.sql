with cte as
(
SELECT 
format_date('%Y', s.order_date) as order_year,
p.product_name,
sum(s.sales_amount) as current_sales
FROM `main-cedar-464414-m7.Sales_Analytics.gold_fact_sales` as s 
left join `main-cedar-464414-m7.Sales_Analytics.gold_dim_products` as p
on s.product_key=p.product_key
where s.order_date is not null
group by format_date('%Y', s.order_date), p.product_name
)

select order_year, product_name, current_sales,
avg(cte.current_sales) over(partition by product_name) as avg_sales,
lag(cte.current_sales) over(partition by product_name order by cte.order_year) as py_sales
from cte
order by product_name, order_year