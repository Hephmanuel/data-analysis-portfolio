use Project1;


/*Which hotel had more cancellations and what would be a possible reason?*/
with hotels as(
SELECT * FROM  hotel_revenue_2018
union
SELECT * FROM hotel_revenue_2019
union
SELECT * FROM hotel_revenue_2020)
/*SELECT COUNT(reservation_status) AS No_of_Cancellations, arrival_date_year, hotel
FROM hotels
WHERE reservation_status = 'Canceled'
GROUP BY hotel, arrival_date_year;

City hotel had more cancelled bookings overall*/


/*Is there a correlation between lead_time and cancellation?*/

SELECT COUNT(reservation_status),reservation_status, ROUND(AVG(lead_time)) AS Avg_Lead_Time
FROM hotels
GROUP BY reservation_status
;


