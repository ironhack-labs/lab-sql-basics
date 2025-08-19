SELECT client_id FROM client WHERE district_id = 1
ORDER By client_id ASC LIMIT 5;
SELECT client_id FROM client WHERE district_id = 72
ORDER BY client_id DESC LIMIT 1;
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;
SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id ASC;
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;
SELECT amount
FROM `order`
WHERE account_to = 30067122
ORDER BY amount ASC;
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;
SELECT district_id, COUNT(*) AS num_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;
SELECT type, COUNT(*) AS num_cards
FROM card
GROUP BY type
ORDER BY num_cards DESC;
SELECT account_id, SUM(amount) AS total_loan
FROM loan
GROUP BY account_id
ORDER BY total_loan DESC
LIMIT 10;
SELECT date, COUNT(*) AS num_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;
SELECT date, duration, COUNT(*) AS num_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;