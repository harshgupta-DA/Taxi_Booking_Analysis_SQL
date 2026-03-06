-- 7.Peak Booking Hours
SELECT hour(pickup_time) AS hour, COUNT(*) AS "Rides"
FROM rides WHERE hour(pickup_time) between 8 and 12 or hour(pickup_time) between 18 and 22 GROUP BY hour order by hour ;