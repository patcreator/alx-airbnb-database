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


## Task 1: Practice Subqueries

This task demonstrates the use of both non-correlated and correlated subqueries.

### Queries Implemented

1. **Non-correlated subquery**
   - Retrieves properties whose average review rating is greater than 4.0.

2. **Correlated subquery**
   - Retrieves users who have made more than 3 bookings.


## Task 2: Aggregations and Window Functions

This task applies SQL aggregation and window functions to analyze booking data.

### Queries Implemented

1. **Aggregation with COUNT**
   - Calculates the total number of bookings made by each user using `COUNT()` and `GROUP BY`.

2. **Window Function (RANK)**
   - Ranks properties based on the total number of bookings they have received using the `RANK()` window function.

