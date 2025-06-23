-- What is the profit margin per category and sub-category?

SELECT Category, `Sub-Category`,
	ROUND((SUM(Sales)/(SELECT SUM(Sales) FROM superstore) * 100 ), 2) AS profit_margin
FROM superstore
GROUP BY Category, `Sub-Category`
	ORDER BY Category, `Sub-Category` ;

-- INSIGHTS ->

-- Highest Margin Sub-Categories:

-- Chairs (14.45%) and Phones (14.52%) are the most profitable.
-- Other high-margin areas include Tables (9.11%), Binders (8.8%), and Machines (8.33%).

-- Low Margin or Underperforming Sub-Categories:

-- Sub-categories like Labels (0.55%), Fasteners (0.13%), Envelopes (0.68%),
-- and Art (1.19%) contribute minimally to total sales profit margin.

-- BUSINESS RECOMMENDATIONS ->

-- Prioritize high-margin sub-categories like Phones, Chairs, and Machines in marketing and inventory planning.

-- Reevaluate low-margin items (e.g. Fasteners, Labels) for possible discontinuation, bundling, or cost optimization.

-- Shift focus toward Furniture and Technology, which offer better profitability than Office Supplies.

-- Use low-margin products in promotions to boost volume without significantly affecting overall margins.
