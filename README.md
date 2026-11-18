# Online Bookstore Relational Database & Sales Analysis (SQL)

## 📌 Project Overview
This project demonstrates end-to-end relational database creation and exploratory data analysis using **Microsoft SQL Server (SSMS)**. Starting from raw schema design, I built a normalized 3-table database for an online bookstore and wrote SQL queries to solve practical business problems related to customer retention, inventory management, and regional sales tracking.

## 🛠️ Tools & SQL Concepts Used
* **Database Engine:** Microsoft SQL Server (T-SQL) / SSMS
* **Database Design (DDL & DML):** `CREATE DATABASE`, `CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `INSERT INTO`
* **Data Querying & Filtering:** `SELECT`, `WHERE`, comparison operators (`<`, `>`), `IS NULL`
* **Table Relationships:** `INNER JOIN`, `LEFT JOIN`, table aliasing

## 🗂️ Database Schema
The database (`bookstore_project`) consists of three interconnected tables:
1. **`Customers`**: Stores customer ID, full name, city, and signup date.
2. **`Books`**: Stores book ID, title, genre, unit price (INR), and current stock quantity.
3. **`Orders`**: Tracks order ID, customer ID (FK), book ID (FK), order date, and quantity purchased.

## 📊 Business Questions Solved
1. **Complete Customer Order History (`INNER JOIN`):** Merged customer, book, and transaction records to build a unified order log for operations tracking.
2. **Inactive Customer Outreach (`LEFT JOIN` + `IS NULL`):** Identified registered customers with zero purchase history (`Kabir Das`) to enable targeted welcome discount campaigns.
3. **Low Stock & Out-of-Stock Alerts (`WHERE` Filtering):** Flagged inventory items with fewer than 5 units remaining (*Atomic Habits*, *Deep Work*, *Sapiens*) to prevent stockouts.
4. **Regional Sales Performance (`JOIN` + `WHERE`):** Isolated order activity for customers in **Delhi** to evaluate regional demand.
5. **High-Value Order Tracking (`JOIN` + Filtering):** Filtered transactions involving premium books priced above ₹450 to identify high-revenue product lines.

## 🚀 How to Run This Project
1. Open **SQL Server Management Studio (SSMS)** and connect to your local server.
2. Open the `bookstore_analysis.sql` file provided in this repository.
3. Execute the DDL and DML sections to generate the database, tables, and sample records.
4. Highlight and run each commented analytical query (`F5`) to view the business outputs.
