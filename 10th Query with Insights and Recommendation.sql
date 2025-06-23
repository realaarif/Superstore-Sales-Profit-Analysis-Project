-- Which region has the highest return on sales?

SELECT Region,
	ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS return_on_sales
FROM superstore
GROUP BY Region
	ORDER BY return_on_sales DESC ;

-- INSIGHTS ->

-- West Region has the highest return on sales at 14.86%, indicating efficient sales operations and strong profitability.
-- East (13.48%) and South (11.81%) also perform well, while the Central region lags behind with only 8.06%.

-- BUSINESS RECOMMENDATIONS ->

-- Replicate West’s strategy across other regions to boost overall profitability.
-- Investigate Central region's low margin — optimize pricing, discounts, and operational costs.
-- Tailor regional strategies based on profitability insights to improve ROI.
-- Focus investments in high-margin regions like West and East for better returns.

