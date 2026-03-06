🚕 Taxi Booking Data Analysis | MySQL
📌 Project Overview

This project focuses on analyzing taxi booking data using MySQL to extract meaningful business insights from transactional ride data.
The dataset contains 3000+ ride records, and the project demonstrates how SQL can be used for data analysis, reporting, and business decision-making.
The analysis includes revenue calculations, driver performance analysis, rider spending patterns, and ride duration metrics.

📊 Dataset Description
The project database consists of the following tables:

Table	Description
Rides	Stores ride information such as ride ID, driver, rider, distance, duration, and timestamps
Drivers	Contains driver details
Riders	Contains rider/customer information
Vehicles	Vehicle details used for rides
Payments	Payment transactions for rides
Ratings	Rider feedback and driver ratings

🗂 Database Schema
The relational database was designed using the following relationships:
Drivers → Rides (One driver can perform multiple rides)
Riders → Rides (One rider can book multiple rides)
Rides → Payments (Each ride has a payment record)
Rides → Ratings (Each ride can have a rating)
Drivers → Vehicles (Driver assigned a vehicle)

🛠 Tools & Technologies
MySQL
MySQL Workbench
SQL Queries
Data Analysis Techniques

🔍 SQL Concepts Used
This project demonstrates multiple SQL concepts:
SELECT queries
INNER JOIN / LEFT JOIN
GROUP BY
Aggregate Functions
SUM()
AVG()
COUNT()
Subqueries
Views
Filtering Conditions
Revenue Calculations
Timestamp Functions
TIMESTAMPDIFF()

📈 Key Business Insights

💰 Revenue Analysis
Total Revenue Generated: 703K+
⏱ Ride Duration Analysis
Average Ride Duration: ~26 minutes


🏆 Driver Performance
Identified Top 5 Drivers by Revenue
Analyzed:
Total rides
Earnings
Average ride distance

👤 Rider Analysis
Identified Top Riders by Total Spending

⭐ Ratings Analysis
Analyzed driver performance based on rider ratings


📊 Sample SQL Queries

1️⃣ Total Revenue Generated
SELECT SUM(amount) AS total_revenue
FROM payments;

2️⃣ Top 5 Drivers by Revenue
SELECT d.driver_name, SUM(p.amount) AS total_revenue
FROM drivers d
JOIN rides r ON d.driver_id = r.driver_id
JOIN payments p ON r.ride_id = p.ride_id
GROUP BY d.driver_name
ORDER BY total_revenue DESC
LIMIT 5;

3️⃣ Average Ride Duration
SELECT AVG(TIMESTAMPDIFF(MINUTE, start_time, end_time)) AS avg_duration
FROM rides;

4️⃣ Top Riders by Spending
SELECT r.rider_name, SUM(p.amount) AS total_spent
FROM riders r
JOIN rides rd ON r.rider_id = rd.rider_id
JOIN payments p ON rd.ride_id = p.ride_id
GROUP BY r.rider_name
ORDER BY total_spent DESC;

📌 Created SQL View
A reusable Driver Performance Summary View was created.

CREATE VIEW driver_summary AS
SELECT 
    d.driver_name,
    COUNT(r.ride_id) AS total_rides,
    SUM(p.amount) AS total_earnings,
    AVG(r.distance) AS avg_distance
FROM drivers d
JOIN rides r ON d.driver_id = r.driver_id
JOIN payments p ON r.ride_id = p.ride_id
GROUP BY d.driver_name;
🚀 Learning Outcomes

Through this project, I improved my ability to:
Work with relational databases
Perform real-world SQL analysis
Build business KPIs using SQL
Transform raw data into actionable insights
Write optimized queries using joins and aggregations

📬 Connect With Me
If you found this project interesting, feel free to connect or give feedback!

⭐ Don't forget to star the repository if you like the project.
