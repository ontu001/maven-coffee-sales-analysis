# ☕ Maven Coffee Sales Analysis (SQL Project)

Welcome to my SQL-based analytics project where I explore retail coffee sales data from the Maven Analytics challenge. This project dives deep into store performance, customer behavior, product trends, and revenue analysis using **pure SQL**.

## 📌 Project Objective

The goal of this project is to perform a comprehensive **Exploratory Data Analysis (EDA)** on a transactional dataset to extract valuable business insights that can inform strategic retail decisions.

---

## 📂 Dataset Overview

The dataset simulates real-world retail sales and includes the following key features:

- **Transaction-level data** from multiple store locations
- **Date & time stamps**, product details, categories, pricing, and quantity
- Covers the time period: **January 2023 to April 2023**

> Source: [Maven Analytics SQL Challenge](https://www.mavenanalytics.io)

---

## 🔧 Tools & Technologies

- **SQL** (MySQL dialect)
- SQL functions: `GROUP BY`, `HAVING`, `EXTRACT()`, `JOIN`, `DATE`, `ROUND()`, etc.
- Basic data modeling: table creation, data types, column selection

---

## 📊 Key Analyses & Insights

### 💰 Revenue Metrics
- **Total Revenue** generated across all stores
- **Average Order Value (AOV)** per transaction

### 🏪 Store Performance
- Highest performing stores by total revenue
- Store-level average transaction value

### 🕒 Time-Based Trends
- Peak **sales hours** and **days of the week**
- Month-over-month transaction trends
- April 2023 deep dive

### 📦 Product Performance
- Top-selling products by **daily average sales**
- Best-performing **categories** by revenue
- Products with highest **revenue per unit sold**

### 👥 Inferred Customer Behavior
- Average number of items per transaction
- High-frequency product identification (1000+ transactions)

---

## 📈 Business Value Delivered

This analysis provides actionable insights such as:

- Optimal store locations for investment
- Best times to run promotions and deploy staff
- Products worth upselling or bundling
- Customer behavior patterns for targeting marketing campaigns


---

## 📁 Project Structure

```bash
📦 maven-coffee-sales-analysis/
├── SQL_Scripts/
│   └── maven_coffee_sales_analysis.sql
├── Presentation/
│   └── Maven_Coffee_Sales_Insights.pdf
├── README.md
