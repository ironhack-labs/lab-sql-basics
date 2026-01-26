Query 1
 client_id from client where district_id ==1 order by client_id limit 5

 Query 2
select client_id from client where district_id ==72 order by client_id desc limit 1;

Query 3
select amount from loan order by amount ASC limit 3;

Query 4
SELECT DISTINCT status FROM loan ORDER BY status ASC;

Query 5
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

QUERY 6
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

QUERY 7
SELECT account_id FROM loan WHERE duration=60 ORDER BY amount ASC;

QUERY 8
SELECT DISTINCT K_SYMBOL FROM "order" ORDER BY k_symbol ASC;

QUERY 9
SELECT DISTINCT order_id FROM "order" WHERE account_id = 34 ORDER BY order_id ASC;

QUERY 10
SELECT DISTINCT account_id FROM "order" WHERE order_id BETWEEN 29540 AND 29560;

QUERY 11
SELECT amount FROM "order" WHERE account_to = 30067122;

QUERY 12
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

QUERY 13
SELECT district_id, COUNT(*)AS client_id FROM client WHERE district_id <10 GROUP BY district_id ORDER BY district_id ASC;

QUERY 14
SELECT type, COUNT(*)AS card_id FROM card GROUP BY type ORDER BY card_id DESC;

QUERY 15
SELECT account_id, SUM(amount)AS total_loan_amount FROM LOAN GROUP BY account_id ORDER BY total_loan_amount DESC LIMIT 10;

QUERY 16
SELECT date,count(*) AS loans_issued FROM LOAN WHERE date < 930907 GROUP BY date ORDER BY date DESC;

QUERY 17
SELECT date,duration, COUNT(*) AS loan_id FROM LOAN WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;

QUERY 18
SELECT account_id,type, SUM(amount) AS total_amount FROM trans WHERE account_id=396 GROUP BY account_id,type ORDER BY type ASC;