# Airbnb Database Schema

This project defines the SQL database schema for an Airbnb-like application.
It includes tables for users, properties, bookings, payments, reviews, and messages,
along with the required constraints and indexes.

##  Project Structure


##  Database Technology

- Database: MySQL
- Primary Keys: UUIDs stored as `CHAR(36)`
- Constraints: Primary keys, foreign keys, unique, and check constraints
- Indexing: Applied to frequently queried columns

##  Tables Overview

### User
Stores user account information.

**Key fields:**
- `user_id` (Primary Key)
- `email` (Unique)
- `role` (`guest`, `host`, `admin`)

### Property
Stores properties listed by hosts.

**Key fields:**
- `property_id` (Primary Key)
- `host_id` (Foreign Key → User)

### Booking
Stores booking records for properties.

**Key fields:**
- `booking_id` (Primary Key)
- `property_id` (Foreign Key → Property)
- `user_id` (Foreign Key → User)
- `status` (`pending`, `confirmed`, `canceled`)

### Payment
Stores payment information for bookings.

**Key fields:**
- `payment_id` (Primary Key)
- `booking_id` (Foreign Key → Booking)
- `payment_method` (`credit_card`, `paypal`, `stripe`)

### Review
Stores user reviews for properties.

**Key fields:**
- `review_id` (Primary Key)
- `property_id` (Foreign Key → Property)
- `user_id` (Foreign Key → User)
- `rating` (1–5)

### Message
Stores messages exchanged between users.

**Key fields:**
- `message_id` (Primary Key)
- `sender_id` (Foreign Key → User)
- `recipient_id` (Foreign Key → User)

##  Indexes

Indexes are created to improve query performance:
- `email` in the User table
- `property_id` in Property, Booking, and Review tables
- `booking_id` in Booking and Payment tables

##  How to Run

1. Create a MySQL database (optional):
   ```sql
   CREATE DATABASE airbnb_db;
   USE airbnb_db;
   SOURCE schema.sql;



