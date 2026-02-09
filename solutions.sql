-- Query 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5
;

-- Query 2

SELECT max(client.client_id)
FROM client
WHERE client.district_id = 72
;

--Query 3

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3
;

--Query 4

SELECT DISTINCT status
FROM loan
ORDER BY status ASC
;

--Query 5

SELECT loan_id
FROM loan
WHERE payments = (
	SELECT max(payments)
	FROM loan
)
;

-- Query 6
SELECT
	account_id AS "#id",
	amount AS "amount"
FROM loan
ORDER BY account_id ASC
LIMIT 5
;

-- Query 7
SELECT account_id
FROM loan
-- lowest 5 loan amounts for duration = 60
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5
;

-- Query 8
SELECT DISTINCT k_symbol
FROM `order`
WHERE TRIM(k_symbol) <> ''
AND k_symbol IS NOT NULL
ORDER BY k_symbol ASC
;

-- Query 9
SELECT order_id
FROM `order`
WHERE account_id = 34
;

-- Query 10
SELECT DISTINCT account_id
FROM `order`
WHERE 
	order_id >= 29540 AND
	order_id <= 29560
;

-- Query 11
SELECT amount
FROM `order`
WHERE account_to = 30067122
;

-- Query 12
SELECT trans_id, trans.date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY trans.date DESC
LIMIT 10
;

-- Query 13
SELECT district_id,  count(client_id)
FROM client
WHERE district_id < 10
GROUP by district_id
ORDER by district_id ASC
;

-- Query 14
SELECT type, count(*)
FROM card
GROUP by type
order by count(*) DESC
;

-- Query 15
SELECT account_id, sum(amount)
FROM loan
GROUP by account_id
ORDER by sum(amount) DESC
LIMIT 10
;

-- Query 16
SELECT date, count(loan_id)
FROM loan
WHERE date < 930907
GROUP by date
ORDER by date DESC
;

-- Query 17
SELECT date, duration, count(loan_id)
FROM loan
WHERE date LIKE '9712%'
GROUP by date, duration
order by date ASC, duration ASC;
;

-- Query 18
SELECT account_id,
	   type,
	   sum(amount) AS 'total_amount'
FROM trans
WHERE account_id = 396
GROUP by account_id, type
ORDER by type ASC;

























































