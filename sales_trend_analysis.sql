create database sales_analysis;
use sales_analysis;

create table online_sales( 
	order_id int auto_increment primary key,
    order_date date not null,
    product_id int not null,
    amount float not null);
insert into online_sales (order_date, product_id, amount) VALUES
('2023-01-05', 101, 250.00),
('2023-01-15', 102, 450.50),
('2023-02-10', 101, 300.00),
('2023-02-18', 103, 150.75),
('2023-03-02', 104, 700.00),
('2023-03-25', 102, 120.00),
('2023-04-12', 101, 500.00),
('2023-05-20', 105, 650.00),
('2024-01-10', 101, 800.00),
('2024-01-22', 103, 220.00),
('2024-02-14', 104, 430.00),
('2024-03-18', 102, 900.00),
('2024-04-09', 105, 760.00);
select * from online_sales;

# 1. Use EXTRACT(MONTH FROM order_date) for Month
select year(order_date), extract(month from order_date) as month_number, amount from online_sales;

# 2. GROUP BY Year and Month
select year(order_date) as year, month(order_date) as month from online_sales group by year(order_date), month(order_date);

# 3. Use SUM() for Monthly Revenue
select year(order_date) as year, month(order_date) as month, sum(amount) as monthly_revenue from online_sales 
group by year(order_date),month(order_date);

# 4. COUNT(DISTINCT order_id) for Order Volume            
select year(order_date) as year, month(order_date) as month, count(distinct order_id) as order_volume from online_sales 
group by year(order_date),month(order_date);

# 5. Use ORDER BY for Sorting
select year(order_date) as year, extract(month from order_date) as month, sum(amount) as total_revenue from online_sales 
group by year(order_date), extract(month from order_date) order by total_revenue desc;

# 6. Limit Results for Specific Time Periods
# a. Filter specific year
select year(order_date) as year, extract(month from order_date) as month, sum(amount) as total_revenue from online_sales 
where year(order_date)=2024 group by year(order_date), extract(month from order_date);

# b. Get Top 3 Months by Revenue
select year(order_date) as year, extract(month from order_date) as month, sum(amount) as total_revenue from online_sales 
group by year(order_date), extract(month from order_date) order by total_revenue desc limit 3;
