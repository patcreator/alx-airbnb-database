# Database Normalization (3NF)

## Objective
The objective of this task is to review the Airbnb database schema and ensure that it complies with the principles of Third Normal Form (3NF), eliminating redundancy and maintaining data integrity.

---

## Normalization Overview

A database is in **Third Normal Form (3NF)** if:
1. It is in First Normal Form (1NF)
2. It is in Second Normal Form (2NF)
3. No non-key attribute depends on another non-key attribute (no transitive dependencies)

---

## Entity Analysis

### User
- All attributes are atomic.
- The primary key (`user_id`) uniquely identifies each record.
- No non-key attribute depends on another non-key attribute.

 **User table is in 3NF**

---

### Property
- Attributes depend only on `property_id`.
- `host_id` correctly references the User entity.
- No transitive dependencies exist.

 **Property table is in 3NF**

---

### Booking
- All attributes are atomic and depend on `booking_id`.
- `total_price` is a derived attribute but retained for performance optimization.
- No non-key attribute depends on another non-key attribute.

 **Booking table is in 3NF**

---

### Payment
- Attributes depend solely on `payment_id`.
- No redundant booking or user information is stored.

 **Payment table is in 3NF**

---

### Review
- Rating and comment depend only on `review_id`.
- No transitive dependencies exist.

 **Review table is in 3NF**

---

### Message
- Sender and recipient are represented using foreign keys.
- Message content depends only on `message_id`.

 **Message table is in 3NF**

---

## Conclusion

After reviewing the schema, all entities comply with Third Normal Form (3NF).  
The design avoids redundancy, ensures data integrity, and supports scalability.  
No structural changes were required to achieve 3NF.
