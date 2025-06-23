-- How many orders were placed each year and how did profit change year-on-year?

SELECT YEAR(order_date) AS years,
	COUNT(DISTINCT `Order ID`) AS total_order,
	ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY YEAR(order_date)
	ORDER BY YEAR(order_date) ;

-- INSIGHTS ->

-- Consistent growth observed in both orders and profit from 2014 to 2017.

-- Orders increased from 958 (2014) to 1660 (2017) — a 73% rise.

-- Profit grew from $49,056 in 2014 to $92,603 in 2017 — an 89% increase.

-- BUSINESS RECOMMENDATIONS ->

-- Maintain momentum by investing in high-performing product lines and marketing channels.

-- Forecast demand and scale operations accordingly to avoid inventory or fulfillment issues.

-- Analyze year-over-year drivers (e.g. product mix, pricing, regions) to replicate success in future years.

-- Set annual performance benchmarks based on this upward trend for strategic planning.
