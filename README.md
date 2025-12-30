# Project2_sql

A SQL database project for practicing relational database design and query writing.  
This repository contains SQL scripts that create tables, insert data, and demonstrate key SQL concepts using practical examples. :contentReference[oaicite:1]{index=1}

---

## 📌 Project Description

Project2_sql is focused on **building and querying a relational database** using structured SQL scripts.  
The project provides hands-on examples of SQL syntax, table relationships, data manipulation, and query execution. :contentReference[oaicite:2]{index=2}

---

## 📂 Repository Structure


*The `project2_sql.sql` script is the main file containing the database schema and SQL examples.* :contentReference[oaicite:3]{index=3}

---

## 🛠️ Tools & Technologies

- **SQL** — Structured Query Language
- Database system of choice (e.g., MySQL, PostgreSQL, SQLite, SQL Server)

> You can run the SQL script in any standard SQL environment or editor. :contentReference[oaicite:4]{index=4}

---

## 🚀 Getting Started

To use this project locally:

1. **Clone the repository**
   ```bash
   git clone https://github.com/Mant-0957/Project2_sql.git
   cd Project2_sql
   -- Example: Retrieve all records
SELECT * FROM table_name;

-- Example: Join two tables
SELECT a.column1, b.column2
FROM tableA a
JOIN tableB b
  ON a.id = b.a_id;

-- Example: Group and count
SELECT status, COUNT(*) AS total
FROM orders
GROUP BY status;


---



