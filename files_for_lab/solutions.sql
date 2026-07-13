-- Query 1
SELECT client_id FROM client WHERE district_id = 1 order by client_id ASC LIMIT 5;

-- Query 2
SELECT client_id FROM client WHERE district_id = 1 order by client_id DESC LIMIT 1;

--QUERY 3
SELECT amount FROM loan order by amount ASC LIMIT 3;

-- QUERY 4
SELECT DISTINCT status FROM loan order by status ASC;

--QUERY 5
SELECT loan_id FROM loan order by payments DESC LIMIT 1;

--QUERY 6
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

--QUERY 7
SELECT account_id FROM loan WHERE duration == 60 ORDER BY amount ASC LIMIT 5;

--QUERY 8
SELECT DISTINCT  k_symbol FROM `order` order  by  k_symbol ASC;

--QUERY 9
SELECT  order_id FROM `order` WHERE account_id == 34;

--QUERY 10
SELECT DISTINCT  account_id FROM `order` WHERE order_id >= 29540 AND order_id <= 29560;

--QUERY 11
SELECT DISTINCT  amount FROM `order` WHERE account_to == 30067122;

--QUERY 12
SELECT trans_id , date, type, amount FROM trans WHERE account_id == 793 order by date DESC LIMIT 10;

--QUERY 13
SELECT district_id, COUNT(*) FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

--QUERY 14
SELECT type, COUNT(*)  FROM card GROUP by type ORDER BY COUNT(*) DESC;

--QUERY 15
SELECT account_id, SUM(amount) AS total_loan_amount FROM loan GROUP BY account_id ORDER BY total_loan_amount DESC LIMIT 10;

--QUERY 16
SELECT date, COUNT(*) AS loan_count FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

--QUERY 17
SELECT date, duration, COUNT(*) AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date , duration ASC;

--QUERY 18
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;