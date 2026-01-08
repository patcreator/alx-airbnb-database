-- =====================================
-- Task 5: Partitioning Large Tables
-- =====================================

-- 1️ Create a new partitioned table for Booking based on start_date
-- Note: MySQL requires the partitioned table to be created separately.
CREATE TABLE Booking_partitioned (
    booking_id CHAR(36) NOT NULL,
    property_id CHAR(36) NOT NULL,
    user_id CHAR(36) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending','confirmed','canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- 2️ Insert data from existing Booking table into partitioned table
INSERT INTO Booking_partitioned
SELECT * FROM Booking;

-- 3️ Example query on partitioned table (Checker Requirement)
-- Fetch bookings in a specific date range
EXPLAIN ANALYZE
SELECT *
FROM Booking_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

-- 4️⃣ Another example with JOIN
EXPLAIN ANALYZE
SELECT B.booking_id, B.start_date, U.first_name, P.name AS property_name
FROM Booking_partitioned B
INNER JOIN User U ON B.user_id = U.user_id
INNER JOIN Property P ON B.property_id = P.property_id
WHERE B.start_date BETWEEN '2024-01-01' AND '2024-06-30';
