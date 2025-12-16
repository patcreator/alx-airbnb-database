-- =====================================
-- Seed Data for Airbnb Database
-- =====================================

-- ======================
-- Users
-- ======================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john@example.com', 'hashed_password_1', '1234567890', 'host'),
('22222222-2222-2222-2222-222222222222', 'Jane', 'Smith', 'jane@example.com', 'hashed_password_2', '0987654321', 'guest'),
('33333333-3333-3333-3333-333333333333', 'Admin', 'User', 'admin@example.com', 'hashed_password_3', NULL, 'admin');

-- ======================
-- Properties
-- ======================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
 '11111111-1111-1111-1111-111111111111',
 'Cozy Apartment',
 'A cozy apartment in the city center',
 'New York',
 120.00),

('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
 '11111111-1111-1111-1111-111111111111',
 'Beach House',
 'Beautiful house near the beach',
 'California',
 250.00);

-- ======================
-- Bookings
-- ======================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('cccccccc-cccc-cccc-cccc-cccccccccccc',
 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
 '22222222-2222-2222-2222-222222222222',
 '2025-01-10',
 '2025-01-15',
 600.00,
 'confirmed'),

('dddddddd-dddd-dddd-dddd-dddddddddddd',
 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
 '22222222-2222-2222-2222-222222222222',
 '2025-02-01',
 '2025-02-05',
 1000.00,
 'pending');

-- ======================
-- Payments
-- ======================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',
 'cccccccc-cccc-cccc-cccc-cccccccccccc',
 600.00,
 'credit_card');

-- ======================
-- Reviews
-- ======================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('ffffffff-ffff-ffff-ffff-ffffffffffff',
 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
 '22222222-2222-2222-2222-222222222222',
 5,
 'Amazing place! Very comfortable and clean.');

-- ======================
-- Messages
-- ======================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('99999999-9999-9999-9999-999999999999',
 '22222222-2222-2222-2222-222222222222',
 '11111111-1111-1111-1111-111111111111',
 'Hello, I have a question about the property.');
