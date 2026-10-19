
-- Query 1: First 5 clients from district 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;


-- Query 2: Last client from district 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


-- Query 3: Three lowest loan amounts
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;


-- Query 4: Unique loan statuses alphabetically
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;


-- Query 5: Loan with the highest payment
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;


-- Query 6: Loan amounts of the 5 lowest account IDs
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;


-- Query 7: Five lowest loan amounts with duration 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;


-- Query 8: Unique k_symbol values
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;


-- Query 9: Order IDs for account 34
SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id ASC;


-- Query 10: Unique accounts with order IDs from 29540 to 29560
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;


-- Query 11: Amounts sent to account 30067122
SELECT amount
FROM `order`
WHERE account_to = 30067122;


-- Query 12: Ten newest transactions for account 793
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC, trans_id DESC
LIMIT 10;


-- Query 13: Number of clients per district below 10
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;


-- Query 14: Number of cards per type
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;


-- Query 15: Top 10 accounts by total loan amount
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;


-- Query 16: Number of loans issued per day before 930907
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;


-- Query 17: Loans by date and duration in December 1997
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;


-- Query 18: Total incoming and outgoing amounts for account 396
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;
