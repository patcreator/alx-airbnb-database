# Task 6: Monitor and Refine Database Performance

##  Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

##  Queries Monitored
We monitored the following frequently used queries:

1. Retrieve bookings with user and property details:
```sql
EXPLAIN ANALYZE
SELECT B.booking_id, B.start_date, B.end_date, U.first_name, P.name AS property_name
FROM Booking B
INNER JOIN User U ON B.user_id = U.user_id
INNER JOIN Property P ON B.property_id = P.property_id
WHERE B.status = 'confirmed';
