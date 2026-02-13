-- ======================================
-- LAB 1: BANK DATABASE QUERIES (ALL-IN-ONE)
-- Database: lab1_bank.sqlite
-- ======================================

-- 1. First 5 clients from district_id = 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;

-- 2. Last client where district_id = 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- 3. Three lowest loan amounts
SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

-- 4. Possible loan status values (alphabetical)
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- 5. Loan_id of the highest payment received
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- 6. Loan amount of the lowest 5 account_ids
SELECT account_id, amount
FROM loan
ORDER BY account_id
LIMIT 5;

-- 7. Account_ids with lowest loan amount (duration = 60)
SELECT account_id
FROM loan
WHERE duration = 60 AND amount = (
    SELECT MIN(amount)
    FROM loan
    WHERE duration = 60
)
ORDER BY account_id;

-- 8. Unique values of k_symbol in `order`
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol;

-- 9. order_ids of account_id = 34
SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id;

-- 10. account_ids with orders between order_id 29540 and 29560
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id;

-- 11. Amounts sent to account_to = 30067122
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- 12. 10 most recent transactions for account_id = 793
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- 13. Number of clients from each district_id < 10
SELECT district_id, COUNT(client_id)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

-- 14. Number of cards per type (most frequent first)
SELECT type, COUNT(card_id)
FROM card
GROUP BY type
ORDER BY COUNT(card_id) DESC;

-- 15. Top 10 account_ids by total loan amount
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- 16. Number of loans per day before 930907
SELECT date, COUNT(loan_id)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- 17. December 1997 loans per day per duration
SELECT date, duration, COUNT(loan_id)
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date, duration;

-- 18. Total transaction amount by type for account_id 396
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type;
