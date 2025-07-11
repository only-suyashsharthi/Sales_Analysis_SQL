# Sales Analytics with BigQuery SQL

This project involves end-to-end sales data analysis using **Google BigQuery**. The dataset spans 5 years of transactions across 18K+ customers and 300+ products, with a focus on uncovering insights into sales performance, customer behavior, and product segmentation.



## 📁 Project Structure
```text
Sales-Analytics-BigQuery/
├── Dataset/                  # Contains raw CSV files for customers, products, and sales
│   ├── customers.csv
│   ├── products.csv
│   └── sales.csv
├── Output/                   # Exported results, reports, or snapshots of queries
│   ├── sales_trend.csv
│   ├── cumulative_sales.csv
│   ├── product_category_analysis.csv
│   ├── product_segmentation.csv
│   ├── customer_segmentation.csv
│   └── customer_report.csv
├── Queries/                  # SQL scripts for schema and analysis
│   ├── database_init.sql     # Table creation and loading template
│   ├── sales_trend.sql
│   ├── cumulative_sales.sql
│   ├── product_category_analysis.sql
│   ├── product_segmentation.sql
│   ├── customer_segmentation.sql
│   └── customer_report.sql
└── README.md                 # Project overview and instructions
```
---

## 🧠 Key Analyses Performed

- 📈 **Sales Trends Over Time**  
  Analyzed monthly and yearly sales changes over a 5-year period.

- 📊 **Cumulative & Category-Level Analysis**  
  Compared product categories year-on-year and against 5-year averages.

- 🏷 **Product Segmentation**  
  Grouped 300+ products into cost-based segments.

- 👤 **Customer Segmentation**  
  Categorized 18K+ customers into 3 spending tiers: New, Regular, and VIP.

- 📋 **Customer Report Generation**  
  Built a detailed customer profile report capturing:
  - Total orders, sales, and quantity
  - Recency (months since last order)
  - Average monthly spend and order value
  - Customer lifespan (in months)

---

## 🚀 Getting Started

1. Clone this repository and open it in your local environment.
2. Go to the `Queries/` folder and run `database_init.sql` in BigQuery to create tables.
3. Upload the data from the `Dataset/` folder into BigQuery.
4. Update the paths in `database_init.sql` to point to your uploaded CSV files in Google Cloud Storage or local upload.
5. Run the individual SQL scripts in the `Queries/` folder for analysis.
6. View results or export them from the `Output/` folder.

---

## 🛠 Tech Stack

- **Google BigQuery**
- **Standard SQL**
- **Google Cloud Console**

---


