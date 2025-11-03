-- LAB: SQL Basics (Selection and Aggregation)
-- Database: lab1_bank.sqlite

-- 1. Get the first 5 client IDs from district_id = 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- 2. Get the last client ID where district_id = 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- 3. Return the 3 lowest loan amounts
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- 4. List all distinct loan status values
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- 5. Get the loan_id with the highest payment
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- 6. Show account_id and amount for the first 5 accounts by ID
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- 7. Show 5 lowest loan amounts with duration = 60
SELECT account_id, amount
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- 8. Get all unique k_symbol values from orders
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;

-- 9. List all order IDs for account_id = 34
SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id ASC;

-- 10. Show unique account IDs for orders between IDs 29540 and 29560
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;

-- 11. Show all amounts sent to account_to = 30067122
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- 12. Get the 10 most recent transactions for account_id = 793
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- 13. Count clients by district_id where district_id < 10
SELECT district_id, COUNT(client_id) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- 14. Count cards per type, sorted by frequency
SELECT type, COUNT(card_id) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- 15. Top 10 account_ids by total loan amount
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- 16. Number of loans per date before 930907
SELECT date, COUNT(loan_id) AS loans_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- 17. Loans count per duration and date during Dec 1997
SELECT date, duration, COUNT(loan_id) AS loans_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- 18. Total transaction amount by type for account_id = 396
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;
