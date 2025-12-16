# Airbnb Database Seed Data

This directory contains SQL scripts used to populate the Airbnb database
with sample data for testing and development purposes.

## Directory Structure


## Description

The `seed.sql` file inserts sample records into the following tables:

- User
- Property
- Booking
- Payment
- Review
- Message

The data represents real-world usage scenarios including:
- Multiple users with different roles
- Properties owned by a host
- Bookings made by a guest
- Payments linked to confirmed bookings
- Reviews written by guests
- Messages exchanged between users

## How to Run

1. Ensure the database schema has already been created.
2. Select the database:
   ```sql
   USE airbnb_db;
   SOURCE seed.sql;
