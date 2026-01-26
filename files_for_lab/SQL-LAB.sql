-- QUERY 1
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

-- QUERY 2
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

-- QUERY 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- QUERY 4
SELECT status FROM loan ORDER BY status ASC; 

-- QUERY 5
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

-- QUERY 6
SELECT account_id, amount FROM loan ORDER BY account_id, amount DESC LIMIT 5;

-- QUERY 7
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC;

-- QUERY 8
SELECT k_symbol FROM `order` WHERE k_symbol > 0 ORDER BY k_symbol ASC;

-- QUERY 9
SELECT order_id FROM `order` WHERE account_id =34;

-- QUERY 10
SELECT account_id FROM `order` WHERE order_id >= 29540 AND order_id <=29560; 

-- QUERY 11
SELECT amount FROM `order` WHERE account_to = 30067122;

-- QUERY 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

-- QUERY 13
SELECT count(*) FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- QUERY 14
SELECT type, count(*) FROM card GROUP BY type ORDER BY issued ASC;

-- QUERY 15
SELECT account_id, sum(amount) FROM loan GROUP BY amount ORDER BY sum(amount) DESC LIMIT 10;

-- QUERY 16
SELECT date, count(amount) FROM loan WHERE date < 930907 GROUP BY date,amount ORDER BY date DESC;

-- QUERY 17
SELECT date,duration ,count(*) FROM loan WHERE date >= 971201 AND date <= 971231 GROUP BY date,duration ORDER BY date, duration ASC;

-- QUERY 18
SELECT account_id, type, sum(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;