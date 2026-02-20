Sales Trend Analysis Using SQL

Objective: Analyze monthly revenue and order volume using SQL aggregation functions.

Tools Used
- MySQL
- SQL (Aggregations, Grouping, Filtering, Sorting)

📂 Dataset
Table Name: online_sales
Columns Used:
- order_id
- order_date
- product_id
- amount
The dataset contains transactional sales data across multiple months and years.

🔎 Key Analysis Performed
1️. Monthly Revenue Analysis
- Extracted month and year from order_date
- Calculated total revenue using SUM(amount)
- Grouped by year and month

2️. Monthly Order Volume
- Counted unique orders using COUNT(DISTINCT order_id)
- Grouped by year and month

3️. Top Performing Months
- Ranked months by revenue
- Used ORDER BY total_revenue DESC
- Limited results using LIMIT

4️. Time-Based Filtering
- Filtered data for specific years
- Used BETWEEN for custom date ranges

SQL Concepts Demonstrated
- EXTRACT()
- GROUP BY
- SUM()
- COUNT(DISTINCT)
- ORDER BY
- WHERE filtering
- LIMIT
