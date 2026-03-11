------------------------------------------------
-- SAMPLE DATA FOR HOTEL BOOKING SYSTEM
------------------------------------------------

-- Guests (10)
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Ali Veli','ali@mail.com','Istanbul','555111','ID100');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Ayse Demir','ayse@mail.com','Ankara','555222','ID101');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Mehmet Kaya','mehmet@mail.com','Izmir','555333','ID102');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Ahmet Yilmaz','ahmet@mail.com','Mersin','555444','ID103');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Fatma Can','fatma@mail.com','Bursa','555555','ID104');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Cem Yildiz','cem@mail.com','Adana','555666','ID105');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Elif Tekin','elif@mail.com','Antalya','555777','ID106');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Burak Oz','burak@mail.com','Trabzon','555888','ID107');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Derya Kurt','derya@mail.com','Konya','555999','ID108');
INSERT INTO guests (name,email,address,phone_number,id_number) VALUES ('Emre Arslan','emre@mail.com','Samsun','555000','ID109');

-- Rooms (10)
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('101','standard',100);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('102','deluxe',200);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('103','deluxe',250);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('104','suite',400);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('105','standard',120);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('106','standard',130);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('107','deluxe',220);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('108','suite',450);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('109','standard',110);
INSERT INTO rooms (room_number,room_type,price_per_night) VALUES ('110','suite',500);

-- Amenities (10)
INSERT INTO amenities (amenity_name,description) VALUES ('WiFi','High speed internet');
INSERT INTO amenities (amenity_name,description) VALUES ('TV','Smart television');
INSERT INTO amenities (amenity_name,description) VALUES ('Mini Bar','Snacks and drinks');
INSERT INTO amenities (amenity_name,description) VALUES ('Air Conditioning','Cool air system');
INSERT INTO amenities (amenity_name,description) VALUES ('Balcony','Private balcony');
INSERT INTO amenities (amenity_name,description) VALUES ('Coffee Maker','Coffee and tea');
INSERT INTO amenities (amenity_name,description) VALUES ('Safe','Room safe for valuables');
INSERT INTO amenities (amenity_name,description) VALUES ('Jacuzzi','Private jacuzzi in suite');
INSERT INTO amenities (amenity_name,description) VALUES ('Kitchenette','Small cooking area');
INSERT INTO amenities (amenity_name,description) VALUES ('Sound System','High quality speakers');

-- Room Amenities (10)
INSERT INTO room_amenities VALUES (1,1);
INSERT INTO room_amenities VALUES (1,2);
INSERT INTO room_amenities VALUES (2,1);
INSERT INTO room_amenities VALUES (2,3);
INSERT INTO room_amenities VALUES (3,2);
INSERT INTO room_amenities VALUES (3,3);
INSERT INTO room_amenities VALUES (4,1);
INSERT INTO room_amenities VALUES (4,8);
INSERT INTO room_amenities VALUES (5,1);
INSERT INTO room_amenities VALUES (5,4);

-- Reservations (10)
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (1,DATE '2025-10-05',DATE '2025-10-07',200,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (2,DATE '2025-10-10',DATE '2025-10-12',400,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (3,DATE '2025-11-01',DATE '2025-11-03',500,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (4,DATE '2025-11-05',DATE '2025-11-08',900,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (5,DATE '2025-12-01',DATE '2025-12-03',250,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (6,DATE '2025-12-05',DATE '2025-12-08',600,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (7,DATE '2025-12-10',DATE '2025-12-12',300,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (8,DATE '2025-12-15',DATE '2025-12-18',750,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (9,DATE '2025-12-20',DATE '2025-12-22',400,'confirmed');
INSERT INTO reservations (guest_id,check_in_date,check_out_date,total_amount,reservation_status) VALUES (10,DATE '2025-12-25',DATE '2025-12-28',1000,'confirmed');

-- Services (10)
INSERT INTO services (service_name,price) VALUES ('Room Service',50);
INSERT INTO services (service_name,price) VALUES ('Spa',100);
INSERT INTO services (service_name,price) VALUES ('Airport Transfer',80);
INSERT INTO services (service_name,price) VALUES ('Laundry',30);
INSERT INTO services (service_name,price) VALUES ('Breakfast',20);
INSERT INTO services (service_name,price) VALUES ('Gym Access',40);
INSERT INTO services (service_name,price) VALUES ('Guided Tour',150);
INSERT INTO services (service_name,price) VALUES ('Dinner Reservation',70);
INSERT INTO services (service_name,price) VALUES ('Parking',25);
INSERT INTO services (service_name,price) VALUES ('Mini Bar Refill',30);

-- Reservation Rooms (10)
INSERT INTO reservation_rooms VALUES (1,1,2);
INSERT INTO reservation_rooms VALUES (2,2,2);
INSERT INTO reservation_rooms VALUES (3,3,2);
INSERT INTO reservation_rooms VALUES (4,4,3);
INSERT INTO reservation_rooms VALUES (5,5,2);
INSERT INTO reservation_rooms VALUES (6,6,3);
INSERT INTO reservation_rooms VALUES (7,7,2);
INSERT INTO reservation_rooms VALUES (8,8,3);
INSERT INTO reservation_rooms VALUES (9,9,2);
INSERT INTO reservation_rooms VALUES (10,10,3);

-- Reservation Services (10)
INSERT INTO reservation_services VALUES (1,1,1);
INSERT INTO reservation_services VALUES (2,2,1);
INSERT INTO reservation_services VALUES (3,3,1);
INSERT INTO reservation_services VALUES (4,4,2);
INSERT INTO reservation_services VALUES (5,5,1);
INSERT INTO reservation_services VALUES (6,6,1);
INSERT INTO reservation_services VALUES (7,7,1);
INSERT INTO reservation_services VALUES (8,8,2);
INSERT INTO reservation_services VALUES (9,9,1);
INSERT INTO reservation_services VALUES (10,10,1);

-- Ratings (10)
INSERT INTO ratings VALUES (1,1,1,5,'Excellent room!');
INSERT INTO ratings VALUES (2,2,2,4,'Very good.');
INSERT INTO ratings VALUES (3,3,3,3,'Average experience.');
INSERT INTO ratings VALUES (4,4,4,5,'Perfect!');
INSERT INTO ratings VALUES (5,5,5,4,'Nice stay.');
INSERT INTO ratings VALUES (6,6,6,2,'Could be better.');
INSERT INTO ratings VALUES (7,7,7,5,'Loved it!');
INSERT INTO ratings VALUES (8,8,8,4,'Good service.');
INSERT INTO ratings VALUES (9,9,9,3,'Okay experience.');
INSERT INTO ratings VALUES (10,10,10,5,'Excellent!');

-- Payments (10)
INSERT INTO payments VALUES (1,1,DATE '2025-10-05',200,'Credit Card');
INSERT INTO payments VALUES (2,2,DATE '2025-10-10',400,'Cash');
INSERT INTO payments VALUES (3,3,DATE '2025-11-01',500,'Credit Card');
INSERT INTO payments VALUES (4,4,DATE '2025-11-05',900,'Credit Card');
INSERT INTO payments VALUES (5,5,DATE '2025-12-01',250,'Cash');
INSERT INTO payments VALUES (6,6,DATE '2025-12-05',600,'Credit Card');
INSERT INTO payments VALUES (7,7,DATE '2025-12-10',300,'Cash');
INSERT INTO payments VALUES (8,8,DATE '2025-12-15',750,'Credit Card');
INSERT INTO payments VALUES (9,9,DATE '2025-12-20',400,'Cash');
INSERT INTO payments VALUES (10,10,DATE '2025-12-25',1000,'Credit Card');