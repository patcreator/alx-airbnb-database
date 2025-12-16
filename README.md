# Airbnb Database Schema

## Overview
This project contains the database design for an Airbnb-like application.  
The schema models core platform features such as users, properties, bookings, payments, reviews, and messaging.

The design follows relational database best practices and has been normalized to **Third Normal Form (3NF)** to ensure data integrity, reduce redundancy, and improve scalability.

---

## Entities
- **User** – Stores user account information for guests, hosts, and admins.
- **Property** – Represents properties listed by hosts.
- **Booking** – Records reservations made by users for properties.
- **Payment** – Stores payment information related to bookings.
- **Review** – Captures user reviews for properties.
- **Message** – Supports communication between users.

---

## Normalization
The database schema has been reviewed and validated against normalization rules:
- **First Normal Form (1NF):** All attributes are atomic.
- **Second Normal Form (2NF):** All non-key attributes fully depend on the primary key.
- **Third Normal Form (3NF):** No transitive dependencies exist.

Derived attributes (such as `total_price`) are intentionally retained for performance optimization.

---

## Files
- `normalization.md` – Detailed explanation of the normalization process.
- SQL schema files – Table definitions and constraints.

---

## Conclusion
This schema provides a solid, normalized foundation for an Airbnb-style application, ensuring consistency, efficiency, and ease of maintenance.
