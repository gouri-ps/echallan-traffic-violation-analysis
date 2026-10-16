-- eChallan Traffic Enforcement & Violation Analysis
-- Tool: MySQL / MySQL Workbench
-- Expected database: Echallan
-- Expected table: violations
-- Ensure the dataset has been imported and column names match before running.

USE Echallan;

-- 1. Find dates where pending challans > 100 and pending court cases > 2.
SELECT `date`, pendingChallan, pendingCourt
FROM violations
WHERE pendingChallan > 100 AND pendingCourt > 2;

-- 2. Display 10 dates with the highest difference between total and disposed challans.
SELECT `date`, totalChallan, disposedChallan,
       (totalChallan - disposedChallan) AS undisposedChallans
FROM violations
ORDER BY undisposedChallans DESC
LIMIT 10;

-- 3. Retrieve the first 10 records with key challan details.
SELECT `date`, totalChallan, disposedChallan, pendingChallan, pendingAmount
FROM violations
LIMIT 10;

-- 4. Calculate total, average, highest, and lowest pending amount.
SELECT SUM(pendingAmount) AS total_pending_amount,
       AVG(pendingAmount) AS average_pending_amount,
       MAX(pendingAmount) AS highest_pending_amount,
       MIN(pendingAmount) AS lowest_pending_amount
FROM violations;

-- 5. Calculate total challans for each year, highest first.
SELECT YEAR(`date`) AS year, SUM(totalChallan) AS total_challans
FROM violations
GROUP BY YEAR(`date`)
ORDER BY total_challans DESC;

-- 6. Calculate pending, disposed, and total court cases for each year.
SELECT YEAR(`date`) AS year,
       SUM(pendingCourt) AS pending_court,
       SUM(disposedCourt) AS disposed_court,
       SUM(totalCourt) AS total_court
FROM violations
GROUP BY YEAR(`date`)
ORDER BY year;

-- 7. Find years whose average pending amount exceeds the overall average.
SELECT YEAR(`date`) AS year,
       ROUND(AVG(totalChallan), 2) AS average_daily_challans,
       ROUND(AVG(pendingAmount), 2) AS average_pending_amount
FROM violations
GROUP BY YEAR(`date`)
HAVING AVG(pendingAmount) > (SELECT AVG(pendingAmount) FROM violations)
ORDER BY average_daily_challans DESC;

-- 8. Find dates where pending amount exceeds disposed amount and total challans > 500.
SELECT `date`, totalChallan, pendingAmount, disposedAmount
FROM violations
WHERE pendingAmount > disposedAmount AND totalChallan > 500
ORDER BY pendingAmount DESC;

-- 9. Show 10 largest total-vs-disposed challan gaps where pending amount is above average.
SELECT `date`, totalChallan, disposedChallan, pendingAmount,
       (totalChallan - disposedChallan) AS undisposedChallans
FROM violations
WHERE pendingAmount > (SELECT AVG(pendingAmount) FROM violations)
ORDER BY undisposedChallans DESC
LIMIT 10;

-- 10. Show 10 dates with the highest combined pending challan and court-case activity.
SELECT `date`, pendingChallan, pendingCourt,
       (pendingChallan + pendingCourt) AS unresolved_activity
FROM violations
ORDER BY unresolved_activity DESC
LIMIT 10;

-- 11. Compare record counts for 2022, 2023, and 2024.
SELECT YEAR(`date`) AS year, COUNT(*) AS record_count
FROM violations
WHERE YEAR(`date`) IN (2022, 2023, 2024)
GROUP BY YEAR(`date`)
ORDER BY record_count DESC;

-- 12. Find January dates with more than 500 total challans.
SELECT `date`, totalChallan, pendingChallan, pendingAmount
FROM violations
WHERE DATE_FORMAT(`date`, '%Y-%m-%d') LIKE '%-01-%'
  AND totalChallan > 500
ORDER BY totalChallan DESC;

-- 13. Display 5 dates ranked after skipping the 10 highest pending-challan records.
SELECT `date`, pendingChallan, pendingAmount
FROM violations
ORDER BY pendingChallan DESC
LIMIT 5 OFFSET 10;

-- 14. Count dates where pending challans exceeded disposed challans, grouped by year.
SELECT YEAR(`date`) AS year,
       COUNT(*) AS dates_with_higher_pending_challans
FROM violations
WHERE pendingChallan > disposedChallan
GROUP BY YEAR(`date`)
ORDER BY dates_with_higher_pending_challans DESC;

-- 15. Count dates with more than 100 pending challans for each year.
SELECT YEAR(`date`) AS year,
       COUNT(*) AS high_pending_dates
FROM violations
WHERE pendingChallan > 100
GROUP BY YEAR(`date`)
ORDER BY high_pending_dates DESC;
