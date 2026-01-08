# Task 4: Optimize Complex Queries

##  Objective
Refactor complex queries to improve performance while retrieving booking, user, property, and payment details.

##  Initial Query
- Retrieves all columns from Booking, User, Property, and Payment tables.
- Joins are correctly set but selects more columns than necessary.

##  Performance Analysis
- `EXPLAIN ANALYZE` shows that:
  - Some columns are not required for typical queries.
  - Joins are performed on indexed columns (user_id, property_id, booking_id).
  - Reducing selected columns can reduce memory usage and execution time.
