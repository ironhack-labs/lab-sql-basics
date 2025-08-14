-- Query 1: Get the id values of the first 5 clients from district_id with a value equals to 1
SELECT client_id
FROM client
WHERE district_id = 1
LIMIT 5;

-- Query 2: Get the id value of the last client where the district_id equals to 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3: Get the 3 lowest amounts in the loan table
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Query 4: Possible values for status, ordered alphabetically in ascending order in the loan table
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

-- Query 5: Loan_id of the highest payment received in the loan table
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Query 6: Loan amount of the lowest 5 account_ids in the loan table
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7: Account_ids with the lowest loan amount that have a loan duration of 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8: Unique values of k_symbol in the order table
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;

-- Query 9: Order_ids of the client with the account_id 34 in the order table
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10: Account_ids responsible for orders between order_id 29540 and 29560 (inclusive)
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11: Individual amounts sent to account_to id 30067122 in the order table
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12: Trans_id, date, type, and amount of the 10 first transactions from account_id 793, newest to oldest
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13: Number of clients from each district_id lower than 10, sorted by district_id
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- Query 14: Number of cards for each type, ranked by frequency
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

-- Query 15: Top 10 account_ids based on the sum of their loan amounts
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

-- Query 16: Number of loans issued for each day before 930907, ordered by date descending
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17: Number of loans in December 1997 for each duration, ordered by date and duration
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- Query 18: Sum of transaction amounts for account_id 396 by type, sorted alphabetically
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;