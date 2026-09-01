-- ASSIGNMENT 4 -- 

-- 1) List full details of all hotels.
SELECT * FROM hotel;

-- 2) List full details of all hotels in New York.
SELECT * FROM hotel WHERE City = "New York";

-- 3) List the names and cities of all guests, ordered according to their cities.
SELECT name , city FROM guest ORDER BY city;

-- 4) List all details for non-smoking rooms in ascending order of price.
SELECT * FROM room WHERE type = 'N' ORDER BY price;

-- 5) List the number of hotels there are.
SELECT count(Hotel_No) FROM hotel;

-- 6 ) List the cities in which guests live. Each city should be listed only once.
SELECT distinct(city) FROM guest;

-- 7 ) List the average price of a room.
SELECT  avg(price) FROM room;

-- 8 ) List hotel names, their room numbers, and the type of that room.
SELECT h.Name, r.Room_No,r.Type FROM hotel h join room r on h.Hotel_No = r.Hotel_No;

-- 9 ) List the hotel names, booking dates, and room numbers for all hotels in New York.
SELECT h.name, h.City,b.Date_From as Booking_date ,b.Room_No from hotel h join booking b on h.Hotel_No = b.Hotel_No
WHERE h.City = "New York";

-- 10 ) What is the number of bookings that started in the month of September?
SELECT count(*) AS total_bookings, monthname(date_from) AS Month_name 
FROM booking
group by Month_name 
having Month_name = "September";

-- 11 ) List the names and cities of guests who began a stay in New York in August.
SELECT g.name,g.City ,monthname(date_from) as month_name FROM guest g join booking b on g.Guest_No = b.Guest_No join hotel h on h.Hotel_No = b.Hotel_No
where h.City = "New York" AND monthname(date_from) = "August";

-- 12) List the hotel names and room numbers of any hotel rooms that have not been booked.
SELECT h.name, r.room_no 
FROM hotel h 
JOIN room r ON h.Hotel_No = r.Hotel_No
WHERE h.Hotel_No NOT IN 
(SELECT h.Hotel_No 
FROM booking b 
JOIN hotel h ON h.Hotel_No = b.Hotel_No);

-- 13) List the hotel name and city of the hotel with the highest priced room.
SELECT h.name, h.city, r.Price FROM hotel h 
JOIN room r ON h.Hotel_No = r.Hotel_No
WHERE r.price = 
(SELECT MAX(Price)
FROM room); 

/* 14) List hotel names, room numbers, cities, and prices 
for hotels that have rooms with prices lower 
than the lowest priced room in a Boston hotel.*/

SELECT h.Name,h.city, r.Room_No, MIN(Price) AS Lowest_Price
FROM hotel h 
JOIN room r ON h.Hotel_No = r.Hotel_No
GROUP BY h.Name,h.city, r.Room_No, r.Price
having MIN(Price) <
(SELECT MIN(Price)
FROM hotel h
JOIN room r ON h.Hotel_No = r.Hotel_No
WHERE city = "Boston");

-- 15) List the average price of a room grouped by city.
SELECT h.city, ROUND(AVG(r.Price),0) AS Average_Price
FROM hotel h 
JOIN room r
ON h.Hotel_No = r.Hotel_No
GROUP BY h.City;
