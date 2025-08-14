--Query1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

--Query2
SELECT client_id
FROM client
WHERE district_id = 72
order by client_id desc
limit 1;

--Query3
select amount from loan order by amount asc LIMIT 3;

--Query4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

--Query5
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

--Query6
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

--Query7
SELECT account_id  from loan where duration=60 order by amount asc limit 5;

--Query8
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;

--Query9
select order_id  FROM `order` where account_id=34;

--Query10
select DISTINCT account_id from `order` where order_id BETWEEN  29540 and 29560 limit 4;

--Query11
select amount from `order` where account_to=30067122;

--Query12
select trans_id, date, type, amount from trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

--Query13
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

--Query14
SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

--Query15
select account_id, sum(amount)as sa from loan GROUP BY account_id order by sa desc limit 10;

--Query16
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

--Query17
SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

--Query18
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;




