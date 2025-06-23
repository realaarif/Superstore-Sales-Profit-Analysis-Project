-- What are the top-selling products that are giving negative profits?

SELECT `Product Name`,
	COUNT(`Order ID`) AS total_order,
	ROUND(SUM(Profit), 2) AS loss
FROM superstore
GROUP BY `Product Name`
		HAVING loss < 0
		ORDER BY total_order DESC
LIMIT 5 ;

-- INSIGHTS ->

-- Several frequently ordered products are generating net losses, despite decent sales volumes.
-- Notable examples include:
-- 'KI Adjustable-Height Table': 18 orders, –$248.48
-- 'Global High-Back Leather Tilter, Burgundy': 14 orders, –$474.74
-- 'Global Wood Trimmed Manager’s Task Chair, Khaki': 14 orders, –$503.12
-- These products likely suffer from pricing issues, high costs, or discounting.

-- BUSINESS RECOMMENDATIONS ->

-- Review pricing and discount strategy for loss-generating items to improve margins.
-- Assess supplier and logistics costs - renegotiate or switch vendors if needed.
-- Evaluate product viability - discontinue or replace items with consistently negative profitability.
-- Flag high-risk products for ongoing monitoring using automated alerts or dashboards.
