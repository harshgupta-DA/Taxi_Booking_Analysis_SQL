

-- 🚘 Driver Performance.
-- 9.Top 5 Drivers by Revenue.
SELECT d.name, round(SUM(p.fare_amount + p.surge_multiplier),2) as "Total Revenue"
FROM drivers d
JOIN rides ri ON d.driver_id = ri.driver_id
JOIN payments p ON ri.ride_id = p.ride_id
GROUP BY d.name
ORDER BY "Total Revenue" DESC
LIMIT 5;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 10. TOP 5 Average Driver Rating.
SELECT d.name, ROUND(AVG(r.driver_rating),2) AS "Avrage Driver Rating"
FROM drivers d
JOIN rides ri ON d.driver_id = ri.driver_id
JOIN ratings r ON ri.ride_id = r.ride_id
GROUP BY d.name
ORDER BY "Avrage Driver Rating" DESC
LIMIT 5;