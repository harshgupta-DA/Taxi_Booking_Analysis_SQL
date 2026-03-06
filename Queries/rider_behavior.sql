-- 👤 Rider Behavior.
-- 11.Top 5 Riders by Spending.
SELECT ri.rider_name, round(SUM(p.fare_amount + p.surge_multiplier),2) as "Spending"
FROM riders ri 
JOIN rides r ON ri.rider_id = r.rider_id
JOIN payments p ON r.ride_id = p.ride_id
WHERE r.ride_status = "Completed"
GROUP BY ri.rider_name
ORDER BY "Spending" DESC
LIMIT 5;