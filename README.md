# Task 3: SQL for Data Analysis

## 📋 Overview
This task involves analyzing an e-commerce database using SQL queries. The goal is to extract meaningful insights using SQL operations such as SELECT, JOIN, GROUP BY, subqueries, aggregate functions, views, and indexes. The analysis is performed on the Olist E-commerce dataset in SQLite format.

## 🛠 Tools Used
- SQLite (via DB Browser for SQLite)
- Olist E-commerce Dataset (Kaggle)
- SQL

## 📁 Dataset Tables Used
- `orders`
- `order_payments`
- `customers`
- `products`
- `order_items`
- `order_reviews`

## 🔍 SQL Queries Performed
1. **Order Count by Payment Type** – Used GROUP BY to count orders per payment method.
2. **Order Status by City** – Joined `orders` and `customers` tables to analyze order statuses per city.
3. **High-Activity Customers** – Used a subquery to find customers who ordered more than the average number.
4. **Average Payment per Order** – Used AVG to find payment trends per order.
5. **Revenue by Product Category** – Created a view to summarize total revenue.
6. **Querying the View** – Displayed the category revenue data.
7. **Indexing** – Added indexes to optimize query performance.
8. **Handling NULLs** – Identified reviews with missing comments.

## 📷 Screenshots
Screenshots of the query outputs are included in the `screenshots` folder.

## 📂 Files Included
- `task03.sql` – Contains all the SQL queries
- `screenshots/` – Folder with screenshots of query outputs
- `README.md` – Documentation of the task

## 📚 Learnings
- Hands-on experience with real-world e-commerce data
- Efficient use of joins, subqueries, and views
- Importance of indexes in query performance
- Strategies to handle NULL values in data

## 🔗 Dataset Source
- [Olist E-Commerce Dataset (Kaggle)](https://www.kaggle.com/datasets/terencicp/e-commerce-dataset-by-olist-as-an-sqlite-database)

## ✅ Submission
This project is submitted as part of the Data Analyst Internship (Task 3).

Feel free to explore the queries and insights!
