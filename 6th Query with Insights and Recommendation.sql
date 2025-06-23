-- Who are the top 10 customers based on total purchases?

SELECT `Customer Name`,
	ROUND(SUM(Sales), 2) AS total_purchase
FROM superstore
GROUP BY `Customer Name`
	ORDER BY total_purchase DESC
    LIMIT 10 ;
    
-- INSIGHTS ->

-- The top 10 customers, led by Sean Miller ($25,043.05), contribute significantly to total revenue.
-- There is a noticeable gap between the top spender and others, indicating a high-value customer segment.
-- These customers show strong purchase behavior, suggesting high lifetime value (LTV) and brand engagement.

-- BUSINESS RECOMMENDATIONS ->

-- Prioritize Relationship Management : Offer personalized service or dedicated support
--                                      to retain and grow high-value customer accounts.

-- Leverage Buying Patterns : Analyze purchasing trends to inform targeted marketing
-- 							  and identify similar high-potential customers.

-- Maximize Value : Implement upselling and cross-selling strategies tailored to their preferences
--                  to increase average order value (AOV).
