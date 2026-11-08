-- Lab | SQL basics (selection and aggregation)
-- Database: files_for_lab/lab1_bank.sqlite

-- Query 1: ids of the first 5 clients from district 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- Query 2: id of the last client from district 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3: the 3 lowest loan amounts
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4: possible loan statuses, alphabetically
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- Query 5: loan_id of the highest payment received
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Query 6: account_id and amount of the loans of the 5 lowest account_ids
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7: account_ids with the lowest amount among loans with duration 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8: unique values of k_symbol in the order table (backticks because ORDER is reserved)
SELECT DISTINCT k_symbol
FROM `order`
WHERE TRIM(k_symbol) <> ''
ORDER BY k_symbol ASC;

-- Query 9: order_ids of account_id 34
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10: account_ids with orders between order_id 29540 and 29560 (inclusive)
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;

-- Query 11: amounts sent to account_to 30067122
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12: first 10 transactions of account 793, newest to oldest
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13: number of clients per district_id (< 10)
SELECT district_id, COUNT(*) AS n_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- Query 14: number of cards per type, most frequent first
SELECT type, COUNT(*) AS n_cards
FROM card
GROUP BY type
ORDER BY n_cards DESC;

-- Query 15: top 10 account_ids by total loan amount
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- Query 16: number of loans per day before 930907, newest first
SELECT date, COUNT(*) AS n_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17: loans per day and duration in December 1997
SELECT date, duration, COUNT(*) AS n_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- Query 18: total amount per transaction type for account 396
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;
