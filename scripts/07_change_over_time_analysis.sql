/* Analyze the sales performance over time. */

-- Sales Performance Over Years
SELECT
	YEAR(order_date) as order_year,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

-- Sales Performance Over Months
SELECT
	MONTH(order_date) as order_month,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date)
ORDER BY MOnth(order_date)

-- Sales Performance by Month and Year
SELECT
	YEAR(order_date) as order_year,
	MONTH(order_date) as order_month,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date)

-- Sales Performance by Year, Month, and Day in the same column
SELECT
	DATETRUNC(month, order_date) as order_date,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date), MONTH(order_date)
ORDER BY DATETRUNC(month, order_date), MONTH(order_date)

-- Sales Performance by Month and Year using format function. 
SELECT
	FORMAT(order_date, 'yyyy-MMM') as order_date,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM')
