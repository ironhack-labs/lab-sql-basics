-- Query 1
SELECT client_id FROM client WHERE district_id = 1;

-- Query 2
SELECT client_id FROM client WHERE district_id = 72;

-- Query 3
SELECT amount FROM loan;

-- Query 4
SELECT DISTINCT status FROM loan;

-- Query 5
SELECT loan_id FROM loan;

-- Query 6
SELECT account_id, amount FROM loan;

-- Query 7
SELECT account_id FROM loan WHERE duration = 60;

-- Query 8
SELECT DISTINCT k_symbol FROM `order`;

-- Query 9
SELECT order_id FROM `order` WHERE account_id = 34;

-- Query 10
SELECT account_id FROM `order` WHERE order_id >= 29540 AND order_id <= 29560;

-- Query 11
SELECT amount FROM `order` WHERE account_to = 30067122;

-- Query 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793;

-- Query 13
SELECT district_id, COUNT(*) FROM client WHERE district_id < 10 GROUP BY district_id;

-- Query 14
SELECT type, COUNT(*) FROM card GROUP BY type;

-- Query 15
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id;

-- Query 16
SELECT date, COUNT(*) FROM loan WHERE date < 930907 GROUP BY date;

-- Query 17
SELECT date, duration, COUNT(*) FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration;

-- Query 18
SELECT account_id, type, SUM(amount) FROM trans WHERE account_id = 396 GROUP BY account_id, type;
