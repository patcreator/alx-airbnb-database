# Task 5: Partitioning Large Tables

##  Objective
Implement table partitioning on the Booking table based on the `start_date` column to optimize queries on large datasets.

##  Partitioning Implementation
- Created `Booking_partitioned` table using `PARTITION BY RANGE (YEAR(start_date))`
- Partitions:
  - `p2023` : bookings before 2024
  - `p2024` : bookings in 2024
  - `p2025` : bookings in 2025
  - `pmax` : all future bookings
- Data migrated from the original `Booking` table.

##  Performance Observations
- Queries filtering by `start_date` now **scan only relevant partitions**, reducing the number of rows scanned.
- EXPLAIN ANALYZE shows:
  - Before partitioning: full table scan for date-range queries.
  - After partitioning: only relevant partition scanned → improved execution time.
- Joins with User and Property tables remain efficient due to indexed join columns.

##  Example Queries
1. Fetch bookings in 2024:
```sql
SELECT * 
FROM Booking_partitioned 
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
