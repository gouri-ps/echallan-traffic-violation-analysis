# eChallan Traffic Enforcement & Violation Analysis Using MySQL

## 📌 Project Overview

This project analyzes eChallan traffic violation data using MySQL to
identify useful insights into challan activity, disposal efficiency,
pending challans, financial amounts, and court cases.

The project uses SQL queries to explore daily traffic enforcement
records, compare yearly challan volumes, identify dates with high
pending activity, and analyze unresolved financial and court-related
workloads.

## 🎯 Project Objectives

-   Analyze daily total, disposed, and pending challans.
-   Identify dates with high pending challan counts and pending court
    cases.
-   Calculate total, average, minimum, and maximum pending amounts.
-   Compare challan activity across different years.
-   Analyze pending, disposed, and total court cases.
-   Identify dates with high undisposed challan activity.
-   Apply SQL concepts to a real-world traffic enforcement dataset.

## 🛠️ Tools and Technologies

-   **Database:** MySQL
-   **IDE:** MySQL Workbench
-   **Query Language:** SQL
-   **Dataset Source:** Kaggle

## 📂 Dataset Description

The dataset contains **4,061 daily records and 10 columns**, covering
the period from **January 1, 2015, to February 13, 2026**.

  Column Name         Description
  ------------------- ------------------------------------------
  `date`              Date of the recorded activity
  `totalChallan`      Total challans recorded
  `disposedChallan`   Number of disposed challans
  `pendingChallan`    Number of pending challans
  `pendingAmount`     Amount associated with pending challans
  `disposedAmount`    Amount associated with disposed challans
  `totalAmount`       Total challan amount
  `pendingCourt`      Number of pending court cases
  `disposedCourt`     Number of disposed court cases
  `totalCourt`        Total court cases

The CSV file is named `echallan_daily_data.csv`, and the MySQL table
used for analysis is `violations`.

## 📊 SQL Analysis Performed

The project contains 15 SQL queries covering:

1.  Find dates with more than 100 pending challans and more than two
    pending court cases.
2.  Identify the 10 dates with the highest difference between total and
    disposed challans.
3.  Retrieve the first 10 records showing key daily challan details.
4.  Calculate total, average, highest, and lowest pending amounts.
5.  Calculate total challans for each year.
6.  Analyze pending, disposed, and total court cases by year.
7.  Identify years whose average pending amount is above the overall
    average and compare average daily challan volumes.
8.  Find dates where pending amounts exceed disposed amounts despite
    more than 500 total challans.
9.  Identify the 10 largest gaps between total and disposed challans
    among records with above-average pending amounts.
10. Find the 10 dates with the highest combined pending challan and
    court-case activity.
11. Compare record counts for 2022, 2023, and 2024.
12. Identify January dates with more than 500 total challans.
13. Retrieve five dates ranked by pending challans after skipping the
    first 10 records.
14. Count records where pending challans exceeded disposed challans,
    grouped by year.
15. Count records with more than 100 pending challans for each year.

## 🧠 SQL Concepts Used

-   `SELECT`, `WHERE`, and `AND`
-   Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
-   `DISTINCT`
-   `GROUP BY` and `HAVING`
-   `ORDER BY`, `LIMIT`, and `OFFSET`
-   `IN` and `LIKE`
-   Arithmetic operations and calculated columns
-   Date functions: `YEAR()` and `DATE_FORMAT()`
-   Subqueries
-   `ROUND()`

## 🔍 Key Findings

The project investigates:

-   Daily variations in total, disposed, and pending challans.
-   Dates with large gaps between total and disposed challans.
-   The overall distribution of pending financial amounts.
-   Differences in challan volumes across years.
-   Yearly patterns in pending, disposed, and total court cases.
-   Periods with higher unresolved challan and court-case activity.
-   The frequency of records with more than 100 pending challans.

These findings help examine unresolved enforcement activity, pending
financial amounts, and court-related workloads. Refer to the executed
MySQL query results and project report for the exact values and
observations.

## 🚀 How to Run the Project

1.  Install MySQL Server and MySQL Workbench.

2.  Download or copy `echallan_daily_data.csv` into the project folder.

3.  Create and select the database:

    ``` sql
    CREATE DATABASE Echallan;
    USE Echallan;
    ```

4.  Import the CSV into a table named `violations` using MySQL
    Workbench.

5.  Confirm that the imported column names and data types match the SQL
    script.

6.  Open `echallan_queries.sql` and execute the queries.

7.  Review the query results and insights.

## 📁 Project Structure

``` text
eChallan-Traffic-Violation-Analysis/
│
├── dataset/
│   └── echallan_daily_data.csv
│
├── sql/
│   └── echallan_queries.sql
│
├── screenshots/
│   └── query_results.png
│
├── Traffic-Violation-Analysis.pdf
└── README.md
```

*The folder and filenames above are suggested. Adjust them to match the
actual filenames in your repository.*

## 📝 Conclusion

This project demonstrates how MySQL can be used to analyze eChallan
traffic enforcement data and extract meaningful insights. Using SQL
queries and aggregation techniques, the analysis explores challan
disposal, pending cases, financial amounts, and yearly enforcement
patterns.

The project strengthened practical SQL skills and demonstrated how data
analysis can support a better understanding of unresolved traffic
violations, court-related workloads, and financial burdens.

## 👩‍💻 Author

**Gouri PS**

