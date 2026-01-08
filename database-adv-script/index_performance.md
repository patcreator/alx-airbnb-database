# Task 3: Indexes for Optimization

##  Objective
Identify high-usage columns in User, Booking, and Property tables and create indexes to improve query performance.

##  Indexes Implemented

### User Table
- `idx_user_email` on `email`
- `idx_user_user_id` on `user_id`

### Booking Table
- `idx_booking_user_id` on `user_id`
- `idx_booking_property_id` on `property_id`
- `idx_booking_booking_id` on `booking_id`

### Property Table
- `idx_property_host_id` on `host_id`
- `idx_property_property_id` on `property_id`

##  Performance Measurement

### Before Indexes
- Queries involving JOINs on `user_id`, `property_id` and filtering by `email` were slower.
- EXPLAIN showed full table scans for these queries.

### After Indexes
- EXPLAIN shows the queries use indexes (`ref` or `const`) instead of full table scans.
- Query execution times are significantly improved for joins and WHERE filters.
