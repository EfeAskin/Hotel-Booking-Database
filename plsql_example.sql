------------------------------------------------
-- PL/SQL EXAMPLES FOR HOTEL BOOKING SYSTEM
------------------------------------------------

-- 1. Add a new guest and a reservation using PL/SQL
DECLARE
    v_guest_id NUMBER;
    v_reservation_id NUMBER;
BEGIN
    -- Insert new guest
    INSERT INTO guests(name,email,address,phone_number,id_number)
    VALUES('Selin Kaya','selin@mail.com','Istanbul','5551010','ID110')
    RETURNING guest_id INTO v_guest_id;

    -- Insert reservation for the new guest
    INSERT INTO reservations(guest_id,check_in_date,check_out_date,total_amount,reservation_status)
    VALUES(v_guest_id, DATE '2026-01-10', DATE '2026-01-15', 600, 'confirmed')
    RETURNING reservation_id INTO v_reservation_id;

    -- Assign services
    INSERT INTO reservation_services(reservation_id, service_id, quantity) VALUES(v_reservation_id, 1, 1);
    INSERT INTO reservation_services(reservation_id, service_id, quantity) VALUES(v_reservation_id, 2, 2);

    COMMIT;
END;
/

------------------------------------------------
-- 2. Update reservation status
DECLARE
    v_reservation_id NUMBER := 3;
BEGIN
    UPDATE reservations
    SET reservation_status = 'cancelled'
    WHERE reservation_id = v_reservation_id;

    COMMIT;
END;
/

------------------------------------------------
-- 3. Give a rating for a room
DECLARE
    v_rating_id NUMBER;
BEGIN
    INSERT INTO ratings(guest_id, room_id, reservation_id, score, comment)
    VALUES(2, 2, 2, 5, 'Excellent room and service!')
    RETURNING rating_id INTO v_rating_id;

    COMMIT;
END;
/

------------------------------------------------
-- 4. Calculate total payment for a reservation
DECLARE
    v_total NUMBER;
BEGIN
    SELECT SUM(s.price * rs.quantity)
    INTO v_total
    FROM reservation_services rs
    JOIN services s ON rs.service_id = s.service_id
    WHERE rs.reservation_id = 1;

    DBMS_OUTPUT.PUT_LINE('Total service payment for reservation 1: ' || v_total);
END;
/

------------------------------------------------
-- 5. Automatically assign amenities to a new room
DECLARE
    v_room_id NUMBER;
BEGIN
    -- Insert new room
    INSERT INTO rooms(room_number, room_type, price_per_night)
    VALUES('111','suite',550)
    RETURNING room_id INTO v_room_id;

    -- Assign WiFi and TV
    INSERT INTO room_amenities(room_id, amenity_id) VALUES(v_room_id, 1);
    INSERT INTO room_amenities(room_id, amenity_id) VALUES(v_room_id, 2);

    COMMIT;
END;
/