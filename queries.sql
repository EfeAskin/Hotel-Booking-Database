------------------------------------------------
-- HOTEL BOOKING SYSTEM QUERIES
------------------------------------------------

-- Query 1: Get all guests
SELECT * FROM guests;

-- Query 2: Get all rooms with price > 200
SELECT * FROM rooms
WHERE price_per_night > 200;

-- Query 3: Get reservations for guest_id = 1
SELECT * FROM reservations
WHERE guest_id = 1;

-- Query 4: List all rooms with their amenities
SELECT r.room_number, r.room_type, a.amenity_name
FROM rooms r
JOIN room_amenities ra ON r.room_id = ra.room_id
JOIN amenities a ON ra.amenity_id = a.amenity_id;

-- Query 5: Get all services used in reservation_id = 2
SELECT s.service_name, rs.quantity, s.price
FROM reservation_services rs
JOIN services s ON rs.service_id = s.service_id
WHERE rs.reservation_id = 2;

-- Query 6: Total cost per reservation (rooms only)
SELECT rr.reservation_id, SUM(r.price_per_night * rr.number_of_nights) AS total_room_cost
FROM reservation_rooms rr
JOIN rooms r ON rr.room_id = r.room_id
GROUP BY rr.reservation_id;

-- Query 7: Guests with more than 1 reservation
SELECT g.guest_id, g.name, COUNT(r.reservation_id) AS reservation_count
FROM guests g
JOIN reservations r ON g.guest_id = r.guest_id
GROUP BY g.guest_id, g.name
HAVING COUNT(r.reservation_id) > 1;

-- Query 8: Rooms never reserved
SELECT r.room_id, r.room_number, r.room_type
FROM rooms r
LEFT JOIN reservation_rooms rr ON r.room_id = rr.room_id
WHERE rr.room_id IS NULL;

-- Query 9: Total revenue from a specific service (Spa)
SELECT SUM(s.price * rs.quantity) AS total_spa_revenue
FROM reservation_services rs
JOIN services s ON rs.service_id = s.service_id
WHERE s.service_name = 'Spa';

-- Query 10: Ratings for rooms with average score
SELECT room_id, AVG(score) AS average_score
FROM ratings
GROUP BY room_id;