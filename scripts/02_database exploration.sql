/* Database Exploration */

-- Explore all objects in the database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Explore all columns in the dataset
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'

-- Explore all countries our customers come from 
SELECT DISTINCT country FROM gold.dim_customers

-- Explore all categories "the major divisions"
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1, 2, 3
