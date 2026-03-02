#Exploratory data analysis:
SELECT * FROM walmart;
SELECT COUNT(*) FROM walmart;
SELECT DISTINCT payment_method FROM walmart;

SELECT payment_method, COUNT(*)
FROM walmart 
GROUP BY payment_method;

SELECT DISTINCT COUNT(DISTINCT Branch) FROM walmart;
SELECT Max(quantity) FROM walmart;

# Business Problems:
# Q1 Find different payment method and number of transaction, number of qty sold. 
SELECT DISTINCT payment_method, count(*) AS no_transaction, SUM(quantity) AS no_qty FROM walmart GROUP BY payment_method;

# Q2 Identify the highest-rated category in each branch, displaying the branch, category & AVG rating.

WITH avg_table AS (
    SELECT
        Branch,
        Category,
        AVG(Rating) AS avg_rating
    FROM walmart
    WHERE Rating IS NOT NULL
    GROUP BY Branch, Category
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY Branch ORDER BY avg_rating DESC) AS `rank`
    FROM avg_table
) t
WHERE `rank` = 1;

#Q3 Identitfy the busiest day for each branch based on the number transactions.  

SELECT *
FROM (
    SELECT
        branch,
        DAYNAME(date) AS day_name,
        COUNT(*) AS no_transactions,
        RANK() OVER (
            PARTITION BY branch
            ORDER BY COUNT(*) DESC
        ) AS `rank`
    FROM walmart
    GROUP BY branch, DAYNAME(date)
) t
WHERE `rank` = 1;

#Q4 Calculate the total quantity of items sold per payment method. List payment_method and  total_quantity. 
SELECT payment_method, SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method;

#Q5 Determine the average, minimum, and maximum rating of category for each city. List the city, average_rating, min_rating, and max_rating. 
SELECT 
	city,
    category,
    AVG(rating) as average_rating,
    MIN(rating) as min_rating,
    MAX(rating) as max_rating
FROM walmart
GROUP BY city, category;

#Q6 Calculate the total profit for each category by considering total_profit as (unit_price * quantity * profit_margin). List category and total_profit, ordered from highest to lowest profit. 
SELECT 
	category,
    SUM(total) as total_revenue,
    SUM(total * profit_margin) as total_profit
FROM walmart 
GROUP BY 1;

#Q7 Determine the most common payment method for each Branch. Display Branch and the preferred_payment_method.
WITH cte
AS
(SELECT 
	branch,
    payment_method,
    COUNT(*) as total_transaction,
    RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS `rank`
FROM walmart 
GROUP BY branch, payment_method
)
SELECT * FROM cte 
WHERE `rank` = 1;

#Q8 Categorize sales into 3 groups MORNING, AFTERNOON, EVENING. Find out which of the shift and number of invoices.
SELECT
	branch,
CASE
		WHEN EXTRACT(HOUR FROM(time)) < 12 THEN 'Morning'
		WHEN EXTRACT(HOUR FROM(time)) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END day_time,
	COUNT(*)
FROM walmart 
GROUP by 1, 2
ORDER BY 1, 3 DESC;

#Q9 Identify 5 branch with highest decrese ratio in revenue compare to last year(current year 2023 and last year 2022).
WITH yearly_revenue AS (
    SELECT
        branch,
        YEAR(date) AS year,
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(date) IN (2022, 2023)
    GROUP BY branch, YEAR(date)
),

pivoted_revenue AS (
    SELECT
        branch,
        MAX(CASE WHEN year = 2022 THEN revenue END) AS revenue_2022,
        MAX(CASE WHEN year = 2023 THEN revenue END) AS revenue_2023
    FROM yearly_revenue
    GROUP BY branch
)

SELECT
    branch,
    revenue_2022,
    revenue_2023,
    ROUND(
        (revenue_2023 - revenue_2022) / revenue_2022,
        4
    ) AS decrease_ratio
FROM pivoted_revenue
WHERE revenue_2023 < revenue_2022
ORDER BY decrease_ratio ASC
LIMIT 5;