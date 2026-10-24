# eChallan Traffic Enforcement & Violation Analysis Using MySQL

## 📌 Project Overview

This project analyzes eChallan traffic violation data using MySQL to explore traffic enforcement activity, challan disposal efficiency, pending challans, financial amounts, and court-related workloads.

Using SQL queries, the project examines daily and yearly trends, identifies records with high pending activity, and investigates gaps between total and disposed challans. The analysis demonstrates how SQL can be used to extract meaningful insights from real-world traffic enforcement data.

## 🎯 Project Objectives

- Analyze daily total, disposed, and pending challans.
- Identify dates with high pending challan counts and pending court cases.
- Calculate total, average, minimum, and maximum pending amounts.
- Compare challan activity across different years.
- Analyze pending, disposed, and total court cases.
- Identify dates with high undisposed challan activity.
- Apply SQL concepts to a real-world traffic enforcement dataset.

## 🛠️ Tools and Technologies

- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Query Language:** SQL
- **Dataset Source:** Kaggle

## 📂 Dataset Description

The dataset contains **4,061 daily records and 10 columns**, covering January 1, 2015, to February 13, 2026.

| Column Name | Description |
|---|---|
| `date` | Date of the recorded activity |
| `totalChallan` | Total challans recorded |
| `disposedChallan` | Number of disposed challans |
| `pendingChallan` | Number of pending challans |
| `pendingAmount` | Amount associated with pending challans |
| `disposedAmount` | Amount associated with disposed challans |
| `totalAmount` | Total challan amount |
| `pendingCourt` | Number of pending court cases |
| `disposedCourt` | Number of disposed court cases |
| `totalCourt` | Total court cases |

The CSV file is named `echallan_daily_data.csv`, and the MySQL table used for analysis is `violations`.

**Dataset Source:** [Indian Traffic E-Challan Daily Dataset (2015–2026) – Kaggle](https://www.kaggle.com/datasets/bhanageviraj/indian-traffic-e-challan-daily-dataset-20152026/data)

## 📊 SQL Analysis Performed

The project contains 15 SQL queries covering the following analyses:

1. Find dates with more than 100 pending challans and more than two pending court cases.
2. Identify the 10 dates with the highest difference between total and disposed challans.
3. Retrieve the first 10 records showing key daily challan details.
4. Calculate total, average, highest, and lowest pending amounts.
5. Calculate total challans for each year.
6. Analyze pending, disposed, and total court cases by year.
7. Identify years whose average pending amount exceeds the overall average and compare average daily challan volumes.
8. Find dates where pending amounts exceed disposed amounts despite more than 500 total challans.
9. Identify the 10 largest gaps between total and disposed challans among records with above-average pending amounts.
10. Find the 10 dates with the highest combined pending challan and court-case activity.
11. Compare record counts for 2022, 2023, and 2024.
12. Identify January dates with more than 500 total challans.
13. Retrieve five dates ranked by pending challans after skipping the first 10 records.
14. Count records where pending challans exceeded disposed challans, grouped by year.
15. Count records with more than 100 pending challans for each year.

## 🧠 SQL Concepts Used

- `SELECT`, `WHERE`, `AND`
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- `DISTINCT`
- `GROUP BY` and `HAVING`
- `ORDER BY`, `LIMIT`, and `OFFSET`
- `IN` and `LIKE`
- Arithmetic operations and calculated columns
- Date functions: `YEAR()` and `DATE_FORMAT()`
- Subqueries
- `ROUND()`

## 🔍 Analysis Highlights

The analysis explores several aspects of traffic enforcement activity:

- **Challan disposal:** Examines the difference between total and disposed challans to identify records with substantial unresolved activity.
- **Pending workload:** Identifies dates and years with higher pending challan counts and frequent occurrences of more than 100 pending challans.
- **Financial analysis:** Evaluates the distribution of pending amounts and identifies dates where pending amounts exceed disposed amounts.
- **Yearly trends:** Compares challan volumes and court-case activity across years to understand changes in recorded enforcement activity.
- **Court-related workload:** Examines pending, disposed, and total court cases to understand unresolved court-related activity.
- **High-activity dates:** Highlights dates with high combined pending challan and court-case counts.

These analyses help explore unresolved enforcement activity, pending financial amounts, and court-related workloads. Specific numerical conclusions should be added after reviewing the executed MySQL query results and verifying them against the dataset.

## 🚀 How to Run the Project

### Prerequisites

- MySQL Server
- MySQL Workbench
- The `echallan_daily_data.csv` dataset file

### Steps

1. Clone or download this repository.
2. Download `echallan_daily_data.csv` from the Kaggle dataset source linked above and place it in your project folder.
3. Open MySQL Workbench and create the database:

   ```sql
   CREATE DATABASE Echallan;
   USE Echallan;
   ```

4. Import `echallan_daily_data.csv` into a table named `violations` using the MySQL Workbench Table Data Import Wizard.
5. Confirm that the imported column names and data types match the SQL queries.
6. Open `echallan_queries.sql` in MySQL Workbench and execute the queries.
7. Review the results to explore the findings and patterns in the dataset.

## 📁 Project Structure

```text
eChallan-Traffic-Violation-Analysis/
│
├── echallan_queries.sql
├── Traffic-Violation-Analysis.pdf
└── README.md
```

The repository currently contains the SQL queries, project report, and documentation. The CSV dataset is available separately from Kaggle and must be downloaded before running the analysis.

## 📝 Conclusion

This project demonstrates the application of MySQL for analyzing eChallan traffic enforcement data and exploring patterns in challan disposal, pending cases, financial amounts, and yearly enforcement activity.

By applying filtering, aggregation, grouping, date functions, sorting, and subqueries, the project demonstrates practical SQL skills and the use of data analysis to better understand unresolved traffic violations and court-related workloads.

## 👩‍💻 Author

**Gouri PS**
