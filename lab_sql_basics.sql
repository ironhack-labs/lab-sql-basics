-- Query 1
SELECT client_id FROM client
WHERE district_id == 1;

--Query 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Query 3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

--Query 4
SELECT status
FROM loan
GROUP BY status;

-- Query 5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

-- Query 6
SELECT amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Query 7
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Query 8
SELECT k_symbol
FROM `order`
GROUP BY k_symbol;

-- Query 9
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Query 10
SELECT account_id
FROM `order`
WHERE order_id > 29540 AND order_id <= 29560
GROUP BY account_id;

-- Query 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Query 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- Query 13
SELECT district_id, COUNT(*)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- Query 14
SELECT type, COUNT(type)
FROM card
GROUP BY type
ORDER BY COUNT(type) ASC;

--Query 15
SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- Query 16
SELECT date, COUNT(status)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17
SELECT date, duration, COUNT(duration)
FROM loan
WHERE date LIKE '9712%'
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

--Query 18
SELECT account_id, type, SUM(amount)
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;