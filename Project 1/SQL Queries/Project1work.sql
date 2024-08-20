
USE project1;
with hotels as(
SELECT * FROM  hotel_revenue_2018
union
SELECT * FROM hotel_revenue_2019
union
SELECT * FROM hotel_revenue_2020)



SELECT
hotel,
Round(SUM((stays_in_weekend_nights + stays_in_week_nights) * adr),2) as revenue
FROM hotels
GROUP BY hotel;

SELECT arrival_date_year,
hotel,
Round(SUM((stays_in_weekend_nights + stays_in_week_nights) * adr),2) as revenue
FROM hotels
GROUP BY hotel,arrival_date_year;


SELECT * FROM hotels
JOIN market_segment
ON hotels.market_segment = market_segment.market_segment;


