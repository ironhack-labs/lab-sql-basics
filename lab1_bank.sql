SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

SELECT loan_id
FROM loan
ORDER BY payment DESC
LIMIT 1;

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

SELECT DISTINCT `k_symbol`
FROM `order`;

SELECT order_id
FROM `order`
WHERE account_id = 34;

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id;

SELECT amount
FROM `order`
WHERE account_to = 30067122;

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

SELECT district_id, COUNT(*) as num_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

SELECT type, COUNT(*) as num_cards
FROM card
GROUP BY type
ORDER BY num_cards DESC;

SELECT account_id, SUM(amount) as total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

SELECT date, COUNT(*) as num_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;


SELECT date, duration, COUNT(*) as num_loans
FROM loan
WHERE date LIKE '97%'
AND substr(date, 3, 2) = '12'  -- December
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

SELECT account_id, type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;