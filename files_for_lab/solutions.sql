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

-- Query 3: 3 lowest amounts in the loan table
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4: Possible values for status ordered alphabetically
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- Query 5: loan_id of the highest payment received
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Query 6: Amount of the lowest 5 account_ids in the loan table
SELECT account_id, amount
from loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7: account_ids with the lowest loan amount for a duration of 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8: Unique k_symbol values in the order table
SELECT DISTINCT k_symbol
FROM 'order'
WHERE k_symbol <> ' '
ORDER BY k_symbol ASC;

-- Query 9: order_ids for account_id 34
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10: account_ids for orders between 29540 and 29560 inclusive
SELECT DISTINCT account_id
FROM `order`
WHERE order_id >= 29540
AND order_id <= 29560;

-- Query 11: Individual amounts sent to account_to 30067122
SELECT amount
FROM 'order'
WHERE account_to = 30067122;

-- Query 12: First 10 transactions for account_id 793 (newest to oldest)
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13: Count of clients in each district (for districts < 10)
SELECT district_id, COUNT(*)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC
LIMIT 9;

-- Query 14: Count of cards per type, ranked by frequency
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- Query 15: Top 10 account_ids by total loan amount
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- Query 16: Number of loans issued each day before 930907
SELECT date, COUNT(*)
from loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17: Loans in December 1997 by date and duration
SELECT date, duration, COUNT(*)
FROM loan
WHERE date >= 971201
AND date <= 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- Query 18: Total transaction amounts for account_id 396 by type
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;