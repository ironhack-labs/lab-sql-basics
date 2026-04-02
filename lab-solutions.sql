-- =====================================
-- SQL LAB
-- Author: Hugo Duarte / IronHack 2026
-- =====================================

-- Query 1: First 5 client IDs from district 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- -------------------------------------

-- Query 2: Last client where district_id = 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1

-- -------------------------------------

-- Query 3: 3 lowest amounts in the `loan` table.
SELECT amount
FROM  loan
order by amount ASC
LIMIT 3;

-- -------------------------------------

-- Query 4: Possible values for status.
SELECT DISTINCT status
FROM  loan
order by status ASC

-- -------------------------------------

-- Query 5: Highest payment received in the `loan` table?
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- -------------------------------------

-- Query 6: Get loan amount for the 5 lowest account_ids
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- -------------------------------------

-- Query 7: Get account_ids with the lowest loan amount where duration = 60
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC

-- -------------------------------------

-- Query 8: Get unique k_symbol values from `order` table (escaped name)
SELECT DISTINCT k_symbol
FROM 'order'
ORDER BY k_symbol ASC;

-- -------------------------------------

-- Query 9: Get order_ids for account_id = 34 from `order` table
SELECT order_id
FROM 'order'
WHERE account_id = 34

-- -------------------------------------

-- Query 10: Get account_ids for orders with order_id between 29540 and 29560 (inclusive)
SELECT DISTINCT account_id
FROM 'order'
WHERE order_id BETWEEN 29540 AND 29560;

-- -------------------------------------

-- Query 11: Get amounts sent to account_to = 30067122 from `order` table
SELECT amount
FROM 'order'
WHERE account_to = 30067122

-- -------------------------------------

-- Query 12: Get first 10 transactions for account_id = 793 ordered from newest to oldest
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
order by date DESC
LIMIT 10;

-- -------------------------------------

-- Query 13: Count clients per district_id for districts < 10 (ordered ASC)
SELECT district_id, count(*)
FROM client
WHERE district_id < 10
GROUP by district_id
order by district_id ASC;

-- -------------------------------------

-- Query 14: Count cards per type ordered by frequency (desc)
SELECT type, count(*)
FROM card
GROUP by type
order by count(*) DESC;

-- -------------------------------------

-- Query 15: Top 10 account_ids by total loan amount (sum)
SELECT account_id, sum(amount)
FROM loan
GROUP by account_id
order by sum(amount) DESC
limit 10;

-- -------------------------------------

-- Query 16: Count loans per day before 930907 (exclusive), ordered by date desc
SELECT date, count(*)
FROM loan
WHERE date < 930907
GROUP by date
order by date DESC;

-- -------------------------------------

-- Query 17: Count loans per day and duration for December 1997 (ordered by date and duration ASC)
SELECT date, duration, count(*)
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP by date, duration
order by date ASC, duration ASC;

-- -------------------------------------

-- Query 18: Sum transaction amounts by type for account_id = 396 (ordered by type ASC)
SELECT account_id, type,  sum(amount) 
FROM trans
where account_id = 396
GROUP by account_id, type
order by type ASC