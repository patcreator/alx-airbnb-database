-- =====================================
-- Task 3: Implement Indexes for Optimization
-- =====================================

-- Create indexes to improve query performance for high-usage columns

-- 1️ User table
-- Frequently searched by email and joined on user_id
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_user_id ON User(user_id);

-- 2️ Booking table
-- Frequently filtered by user_id, property_id, booking_id
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_booking_id ON Booking(booking_id);

-- 3️ Property table
-- Frequently joined by host_id and filtered by property_id
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_property_id ON Property(property_id);


-- Measure query performance using EXPLAIN ANALYZE

EXPLAIN ANALYZE SELECT * FROM User WHERE email = 'sample@example.com';
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'sample-user-id';
EXPLAIN ANALYZE SELECT * FROM Property WHERE property_id = 'sample-property-id';
