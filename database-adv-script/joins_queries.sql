-- =====================================
-- Task 0: Complex Queries with Joins
-- =====================================

-- 1️ INNER JOIN
-- Retrieve all bookings and the users who made those bookings
SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM Booking
INNER JOIN User
ON Booking.user_id = User.user_id;


-- 2️ LEFT JOIN
-- Retrieve all properties and their reviews, including properties that have no reviews
SELECT
    Property.property_id,
    Property.name AS property_name,
    Review.review_id,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review
ON Property.property_id = Review.property_id
ORDER BY Property.property_id;


-- 3️ FULL OUTER JOIN (simulated using UNION)
-- Retrieve all users and all bookings, even if no relationship exists
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM User
LEFT JOIN Booking
ON User.user_id = Booking.user_id

UNION

SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM Booking
LEFT JOIN User
ON Booking.user_id = User.user_id;
