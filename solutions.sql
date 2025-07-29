-- Query 1: Get the client_id values of the first 5 clients from district_id = 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;

-- Query 2: Get the client_id of the last client from district_id = 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3: Get the 3 lowest loan amounts
SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

-- Query 4: Get distinct loan status values in alphabetical order
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- Query 5: Get the loan_id with the highest payment
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Query 6: Get account_id and amount for the lowest 5 account_ids in the loan table
SELECT account_id, amount
FROM loan
ORDER BY account_id
LIMIT 5;

-- Query 7: Get account_ids with the lowest loan amounts where duration = 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount
LIMIT 5;

-- Query 8: Get unique k_symbol values from the order table (excluding nulls)
SELECT DISTINCT k_symbol
FROM `order`
WHERE k_symbol IS NOT NULL
ORDER BY k_symbol;

-- Query 9: Get order_ids for account_id = 34
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10: Get distinct account_ids with orders between order_id 29540 and 29560
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11: Get distinct amounts sent to account_to = 30067122
SELECT DISTINCT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12: Get the 10 most recent transactions for account_id = 793
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13: Count clients per district_id (where district_id < 10), sorted ascending
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

-- Query 14: Count number of cards per type, ordered by most frequent first
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- Query 15: Top 10 account_ids by sum of their loan amounts
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- Query 16: Count loans per day before 930907, ordered by date descending
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17: Count loans per duration per day in December 1997
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date, duration;

-- Query 18: Sum of transaction amounts by type for account_id = 396
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type;