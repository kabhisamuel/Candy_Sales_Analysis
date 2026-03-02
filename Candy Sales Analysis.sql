use candy_trend_analysis;

-- 1.What are the total sales and units sold for each product_name, sorted by highest sales?
SELECT product_name, SUM(sales) AS total_sales, SUM(units) AS total_units
FROM candy_ds 
GROUP BY product_name
ORDER BY total_sales DESC;

-- 2.Which region generates the highest average profit_margin per year?

SELECT region, year, AVG(profit_margin) AS avg_profit_margin
FROM candy_ds
GROUP BY region, year
ORDER BY avg_profit_margin DESC;

-- 3.What is the total gross_profit by factory, and which factory has the highest contribution?

SELECT factory, SUM(gross_profit) AS total_gross_profit
FROM candy_ds
GROUP BY factory
ORDER BY total_gross_profit DESC
LIMIT 1;

-- 4.How many unique orders were placed per ship_mode, and what is the average sales per mode?

SELECT ship_mode, COUNT(DISTINCT order_id) AS num_orders, AVG(sales) AS avg_sales
FROM candy_ds
GROUP BY ship_mode
ORDER BY num_orders DESC;

-- 5.Which top 5 cities have the highest total sales in the 'Pacific' region?

SELECT city, SUM(sales) AS total_sales
FROM candy_ds  
WHERE region = 'Pacific'
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;

-- 6What is the year-over-year percentage growth in total units sold for each product_id?

SELECT product_id, 
year, 
SUM(units) AS total_units,
LAG(SUM(units)) OVER (PARTITION BY product_id ORDER BY year) AS prev_units,
((SUM(units) - LAG(SUM(units)) OVER (PARTITION BY product_id ORDER BY year)) / LAG(SUM(units)) OVER (PARTITION BY product_id ORDER BY year)) * 100 AS growth_pct
FROM candy_ds
GROUP BY product_id, year;

-- 7.Which customer_id has the highest total spend, and how many orders did they place?

SELECT customer_id, SUM(sales) AS total_spend, COUNT(DISTINCT order_id) AS num_orders
FROM candy_ds
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 10;

-- 8.What is the average discrepancy between unit_price and calc_unit_price per product_name?

SELECT product_name, AVG(unit_price - calc_unit_price) AS price_discrepancy
FROM candy_ds
GROUP BY product_name
ORDER BY price_discrepancy DESC;


-- 9. find the total sales, total units sold, and average profit margin for each product_name in the 'Pacific' region during the year 2023?

SELECT 
    product_name, 
    SUM(sales) AS total_sales, 
    SUM(units) AS total_units, 
    AVG(profit_margin) AS average_profit_margin
FROM 
    candy_ds
WHERE 
    region = 'Pacific' AND year = 2023
GROUP BY 
    product_name
HAVING 
    SUM(units) > 20
ORDER BY 
    total_sales DESC;



