


CREATE VIEW driversummary AS
SELECT 
    d.driver_id,
    COUNT(r.ride_id) AS "Total Rides",
    round(SUM(p.fare_amount + p.surge_multiplier),2) AS "Total Earnings",
    round(AVG(r.distance_km),2) AS "Average Distnace"
FROM drivers d
JOIN rides r ON d.driver_id = r.driver_id
JOIN payments p ON r.ride_id = p.ride_id
WHERE r.ride_status = 'Completed'
GROUP BY d.driver_id;
SELECT * FROM driversummary;