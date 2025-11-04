-- Query 1
SELECT client_id FROM client
WHERE district_id = 1
order by client_id ASC
LIMIT 5;

-- Query 2
SELECT client_id 
from client where district_id = 72 
order by client_id desc 
LIMIT 1;

--Query 3
--select * from loan
select amount
from loan
order by amount ASC
limit 3;

-- Query 4
select DISTINCT status from loan
order by status ASC;

--Query 5
Select loan_id, payments
from loan
order by payments DESC
LIMIT 1;

--Query 6
select account_id, amount
from loan
order by account_id ASC
limit 5;

--Query 7
select account_id
from loan
where duration = 60
order by amount ASC
limit 5;

--Query 8
SELECT DISTINCT k_symbol
from `order`
ORDER by k_symbol asc;

--Query 9
select order_id
from `order`
WHERE account_id = 34
order by order_id asc;

--Query 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;

--Query 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;

--Query 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

--Query 13
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

--Query 14
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

--Query 15
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

--Query 16
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

--Query 17
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

--Query 18
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;
