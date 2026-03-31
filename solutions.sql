-- Query 1
SELECT client_id FROM client WHERE district_id == 1 LIMIT 5;

-- Query 2
SELECT client_id FROM client WHERE district_id == 72 ORDER BY client_id DESC LIMIT 1;

-- Query 3
SELECT amount FROM loan ORDER BY amount LIMIT 3;

-- Query 4
SELECT status FROM loan GROUP BY status;

-- Query 5
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

-- Query 6
SELECT account_id AS 'id', amount FROM loan ORDER BY account_id LIMIT 5;

-- Query 7
SELECT account_id FROM loan WHERE duration == 60 ORDER BY amount LIMIT 5;

-- Query 8
SELECT DISTINCT k_symbol  FROM `order` ORDER BY k_symbol;

-- Query 9
SELECT order_id FROM `order` WHERE account_id == 34;

-- Query 10
SELECT account_id FROM `order` WHERE order_id < 29561 AND order_id > 29539 GROUP BY account_id;

-- Query 11
SELECT amount FROM `order` WHERE account_to == 30067122;

-- Query 12
SELECT trans_id, `date`, type, amount FROM trans WHERE account_id == 793 ORDER BY `date` DESC LIMIT 10;

-- Query 13
SELECT COUNT(*)  FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id;

-- Query 14
SELECT type, COUNT(type) FROM card GROUP BY type ORDER BY COUNT(type) DESC;

-- Query 15
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

-- Query 16
SELECT `date`, COUNT(loan_id) FROM loan  WHERE `date` < 930907 GROUP BY  `date` ORDER BY  `date` DESC;

-- Query 17

-- Query 18
SELECT account_id, type, SUM(amount) AS 'total_amount' FROM trans WHERE account_id == 396 GROUP BY type ORDER BY type;




