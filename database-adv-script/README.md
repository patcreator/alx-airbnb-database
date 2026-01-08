# Airbnb Database – Advanced SQL Joins

## 1 Project Overview
This project is part of the **ALX Airbnb Database Module**.  
It focuses on writing advanced SQL queries using different types of joins to retrieve meaningful data from a relational database.

---

##  Task 0: Complex Queries with Joins

This task demonstrates the use of:

- INNER JOIN
- LEFT JOIN
- FULL OUTER JOIN (simulated using UNION for MySQL compatibility)

---

##  Queries Implemented

### 1️ INNER JOIN
Retrieves all bookings along with the users who made those bookings.

### 2️ LEFT JOIN
Retrieves all properties and their reviews, including properties that have no reviews.

### 3️ FULL OUTER JOIN
Retrieves all users and all bookings, even if:
- a user has no bookings
- a booking is not linked to a user

Since MySQL does not support FULL OUTER JOIN directly, the query is implemented using `UNION`.

---

##  Files
- `joins_queries.sql` – SQL queries for Task 0
- `README.md` – Project documentation

---

## ✅ Requirements Met
- Uses correct SQL joins
- Compatible with MySQL
- Matches Airbnb database schema
- Ready for manual and auto review
