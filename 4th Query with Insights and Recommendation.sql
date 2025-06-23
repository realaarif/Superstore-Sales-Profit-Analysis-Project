-- Which are the top 5 states contributing to the highest sales?

SELECT State,
	ROUND(SUM(Sales)/(SELECT SUM(Sales) FROM superstore) * 100, 2) percentage_contributed_to_sales
FROM superstore
GROUP BY State
	ORDER BY percentage_contributed_to_sales DESC
    LIMIT 5;
    
-- INSIGHTS ->

-- Top 5 States by Revenue: California (19.84%), New York (13.63%), Texas (7.47%),
--                          Washington (6.02%), and Pennsylvania (5.06%).
-- Collectively, these five states account for over 50% of total sales.
-- Their strong performance can be attributed to large urban populations and higher consumer purchasing power.

-- BUSINESS RECOMMENDATIONS ->

-- Maintain optimal inventory levels in these key states,
-- particularly during peak demand periods (September to December).

-- Implement targeted advertising and state-specific promotional campaigns
-- to maximize revenue potential from these high-performing regions.
