-- Which product categories and sub-categories generate the most revenue and profit?

SELECT Category,
	`Sub-Category`,
	ROUND(SUM(Sales), 2) AS revenue,
	ROUND(SUM(Profit), 2) AS profit
FROM superstore
GROUP BY Category, `Sub-Category`
ORDER BY Category, `Sub-Category`

-- INSIGHTS WITH BUSINESS RECOMMENDATIONS ->

-- Category-Level Insight:

-- Technology category generated the highest revenue and profit among all categories.
-- Recommendation: Business should continue to invest in expanding product lines under Technology category.
--                 Consider bundling or premium offers during high-sale months to further maximize profit.

-- Sub-Category-Level Insight:
-- Within Technology, Phones drove the most revenue, while Copiers generated the most profit.
-- Recommendation: Run targeted campaigns or discounts on Phones to attract more volume and retain market leadership.
--                 For Copiers, maintain pricing strategy and ensure inventory is well-stocked to meet demand.
--                 This is a high-margin product.
