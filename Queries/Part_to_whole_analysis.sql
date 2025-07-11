WITH category_sales AS 
(
SELECT
category,
SUM(sales_amount) total_sales
FROM `main-cedar-464414-m7.Sales_Analytics.gold_fact_sales` s
LEFT JOIN `main-cedar-464414-m7.Sales_Analytics.gold_dim_products` p
ON p.product_key = s.product_key
GROUP BY category
)
SELECT
*, SUM(total_sales) OVER () overall_sales,
ROUND(total_sales/SUM(total_sales) OVER ()*100, 2) AS percentage_sales
FROM category_sales
order by total_sales desc