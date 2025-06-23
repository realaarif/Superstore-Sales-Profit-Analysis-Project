-- What is the monthly trend of sales and profit?

SELECT DATE_FORMAT(order_date, '%Y-%m') AS months_num_wise,
	ROUND(SUM(Sales), 2) AS monthly_sales,
	ROUND(SUM(Profit), 2) AS monthly_profit
FROM superstore
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY months_num_wise ;

-- INSIGHT ->

-- Peak Sales Months:
-- In the top 10 sales months, 7 fall in November and December, rest 3 are September and October, showing Sept-Dec period as the strongest sales season.

-- Worst Sales Months:
-- January and February are consistently low-performing months, possibly due to post-festive fatigue.

-- Loss-Making Months:
-- January 2015 and July 2014 are the only months with net loss, likely due to discount-heavy sales or low volume.

-- High Sales ≠ High Profit:
-- Although November 2017 had the highest sales, it didn’t generate the highest profit — maybe due to low-margin or discounted items.

-- December 2016 brought the most profit, indicating successful sales of premium/high-margin products.

-- Business Recommendation:
-- During September to December, stock should be increased and marketing pushed aggressively — it’s the prime revenue window.
