-- Q1 - What is total revenue, total profit, and total number of orders placed?

SELECT ROUND(SUM(Sales), 2) total_revenue,
	ROUND(SUM(Profit), 2) total_profit,
	COUNT(`Order ID`) total_orders_placed
FROM superstore ;

-- INSIGHT ->

-- Quick overview of total revenue, total profit and total orders
