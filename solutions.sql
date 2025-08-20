--1
SELECT client_id AS id
FROM client
WHERE district_id = 1
LIMIT 5;

--2
SELECT client_id AS id
FROM client
WHERE district_id = 72
LIMIT 1;

--3
SELECT amount
FROM loan
LIMIT 3;

--4
SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

--5
SELECT loan_id
FROM loan
LIMIT 1;

--6
SELECT account_id AS id, amount
FROM loan
ORDER BY account_id
LIMIT 5;

--7
SELECT account_id
FROM loan
WHERE duration = 60
  AND amount = (SELECT MIN(amount) FROM loan WHERE duration = 60);

  --8
SELECT DISTINCT k_symbol
FROM `order`
WHERE k_symbol IS NOT NULL;

--9
SELECT order_id
FROM `order`
WHERE account_id = 34;


--10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id;

--11
SELECT amount
FROM "order"
WHERE account_to = 30067122;

--12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

--13
SELECT district_id, COUNT(*) AS count_clients
FROM client
WHERE district_id < 10
GROUP BY district_id;

--14
SELECT type, COUNT(*) AS count_cards
FROM card
GROUP BY type
ORDER BY count_cards DESC;

--15
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

--16
SELECT date, COUNT(*) AS count_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

--17
SELECT date, duration, COUNT(*) AS count_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

--18
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;
