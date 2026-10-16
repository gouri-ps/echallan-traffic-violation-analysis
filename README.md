# eChallan Traffic Enforcement & Violation Analysis

## Project Overview
This project uses MySQL to analyze eChallan traffic-enforcement records. It explores daily challan volumes, disposed and pending challans, pending financial amounts, and court-case activity.

## Objectives
- Identify dates with high pending challan and court-case activity.
- Compare total challans with disposed challans.
- Summarize pending amounts using aggregate functions.
- Compare challan and court activity across years.
- Explore records with high pending workloads.

## Tools Used
- MySQL
- MySQL Workbench

## SQL Concepts Demonstrated
`SELECT`, `WHERE`, `AND`, arithmetic expressions, aggregate functions (`SUM`, `AVG`, `MAX`, `MIN`, `COUNT`), `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, `OFFSET`, `IN`, `LIKE`, date functions, and subqueries.

## Files
- `echallan_queries.sql` — the 15 SQL queries documented in the project report.
- `Traffic-Violation-Analysis.pdf` — the project report with query explanations and insights.

## How to Run
1. Open MySQL Workbench and connect to your MySQL server.
2. Make sure your eChallan dataset has been imported into a database named `Echallan` and a table named `violations`.
3. Open `echallan_queries.sql` in MySQL Workbench.
4. Run each query after confirming that the column names match your imported dataset.

**Note:** This repository contains the report and SQL queries, not the original dataset. The queries expect the `Echallan.violations` table to already exist. Check your table and column names before running the script.

## Author
Gouri P S
