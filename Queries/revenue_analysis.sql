-- 💰 Revenue Analysis
-- 8.Total Revenue
SELECT round(sum(p.fare_amount + p.surge_multiplier),2) as "Total Revenue"
FROM payments p
JOIN rides ri ON p.ride_id = ri.ride_id
WHERE ri.ride_status = "Completed";