/* Data Exploration> Dimensions */

-- Find the date of the first and last order
-- How many years of sales are available
SELECT
	MIN(order_date) first_order_date,
	MAX(order_date) last_order_date,
	DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years
FROM gold.fact_sales

-- Find the youngest and oldest customer
SELECT
	MIN(birth_date) AS earliest_birth_date,
	MAX(birth_date) AS latest_birth_date,
	DATEDIFF(year, MIN(birth_date), GETDATE()) age_of_oldest_customer,
	DATEDIFF(year, MAX(birth_date), GETDATE()) age_of_youngest_customer
FROM gold.dim_customers
