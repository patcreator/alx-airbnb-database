# Create an Entity-Relationship (ER) diagram based on the database specification

Instructions:

Identify all entities
- User

- Property

- Booking

- Payment

- Review

 - Message

#	Entities	Relationship	Cardinality
1	User–Property	hosts	1:N
2	User–Booking	makes	1:N
3	Property–Booking	is booked in	1:N
4	Booking–Payment	has	1:1
5	User–Review	writes	1:N
6	Property–Review	receives	1:N
7	User–Message	sends / receives	1:N

Used Draw.io to draw erd
