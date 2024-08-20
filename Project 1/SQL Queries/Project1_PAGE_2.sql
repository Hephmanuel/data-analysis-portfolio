USE project1;
with hotels as(
SELECT * FROM  hotel_revenue_2018
union
SELECT * FROM hotel_revenue_2019
union
SELECT * FROM hotel_revenue_2020)

SELECT * FROM hotels
LEFT JOIN market_segment
ON hotels.market_segment = market_segment.market_segment
LEFT JOIN meal_cost 
ON hotels.meal = meal_cost.meal;