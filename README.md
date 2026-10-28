# Library Management System Using SQL

##  Project Overview

The Library Management System is a database project developed using SQL and MySQL. It manages library members, book details, suppliers, book issue and return records, and fine details.

The project demonstrates database creation, table relationships, data insertion, and SQL queries for retrieving and analyzing library information.

## Objectives

* Store and manage library member information.
* Maintain book and supplier details.
* Track book issue and return records.
* Maintain fine details.
* Retrieve useful information using SQL queries.
* Understand relationships between tables using primary and foreign keys.

## Technologies Used

Database: MySQL
Language: SQL
Version Control: Git and GitHub

## Database Tables

This project contains five tables:

| Table Name          | Description                                                                                      |
| ------------------- | ------------------------------------------------------------------------------------------------ |
| `members`           | Stores member details, registration dates, expiry dates, and membership status.                  |
| `book_details`      | Stores book titles, authors, categories, publications, prices, and supplier references.          |
| `suppliers_details` | Stores supplier names, addresses, contact numbers, and email addresses.                          |
| `book_issue`        | Stores book issue dates, due dates, return dates, issue status, and related member and book IDs. |
| `fine_details`      | Stores fine ranges and their corresponding fine amounts.                                         |


## SQL Concepts Used

* Database creation using `CREATE DATABASE`
* Table creation using `CREATE TABLE`
* Primary keys and foreign keys
* Constraints such as `NOT NULL`, `CHECK`, and referential integrity
* Data insertion using `INSERT INTO`
* Data retrieval using `SELECT`
* Filtering using `WHERE`, `LIKE`, and `BETWEEN`
* Aggregate functions such as `COUNT()`
* Grouping using `GROUP BY` and `HAVING`
* Joins, including `INNER JOIN`, `JOIN`, and `RIGHT JOIN`
* Sorting and distinct result retrieval concepts

## Project Queries

The SQL file includes queries to:

1. Display active library members.
2. Display members who have returned books.
3. Find members who borrowed a specific book.
4. Find books based on author names.
5. Count books with SQL in their titles.
6. Count books in each category.
7. Count books published by Pearson.
8. Find books issued on a specific date.
9. Find active members who registered before April 2025.
10. Find members whose membership expired before April 2026.
11. Find members who registered during 2025.
12. Display suppliers and the books they supply.
13. Display suppliers and their associated books.
14. Display member details along with book issue information.
15. Find categories containing more than two books.

## How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Clone or download this GitHub repository.
3. Open MySQL Workbench and connect to your MySQL server.
4. Open `Library_Management_System.sql`.
5. Execute the SQL script.
6. Run the queries included in the file to explore the database.

## Project Structure

Library-Management-System/
│
├── Library_Management_System.sql
└── README.md
