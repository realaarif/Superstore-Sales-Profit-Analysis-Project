-- What is the average delivery time by shipping mode?

SELECT `Ship Mode`,
	ROUND(AVG(ship_date - order_date), 2) AS avg_delivery_time_in_hours
FROM superstore
GROUP BY `Ship Mode`
ORDER BY avg_delivery_time_in_hours ;

-- INSIGHTS ->

-- Same Day delivery is exceptionally fast, averaging just 0.05 hours,
-- indicating near-instant processing and fulfillment.

-- First Class shipping delivers significantly faster (59.43 hours)
-- than Second Class (117.17 hours) and Standard Class (195.16 hours).

-- Standard Class exhibits the longest average delivery time, exceeding 8 days,
-- which may impact customer satisfaction in time-sensitive orders.

-- BUSINESS RECOMMENDATIONS ->

-- Promote First Class and Same Day shipping options for high-value
-- or urgent orders to enhance customer satisfaction and loyalty.

-- Evaluate and optimize Standard Class logistics — consider negotiating
-- with shipping partners or streamlining internal processes to reduce delays.

-- Offer incentives or upgrades to faster shipping modes (e.g. First Class)
-- for frequent or high-spending customers, balancing cost with service quality.

