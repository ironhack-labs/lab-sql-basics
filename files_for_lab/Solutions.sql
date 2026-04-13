SELECT 
	client_id 
FROM client 
WHERE district_id == 1 
LIMIT 5;

SELECT 
max(client_id) 
FROM client 
WHERE district_id == 72;

SELECT 
	amount 
FROM loan 
ORDER BY amount 
LIMIT 3;

SELECT 
	DISTINCT(status) 
FROM loan 
ORDER BY status;

SELECT 
	loan_id 
FROM loan 
WHERE payments = (
		select 
			max(payments) 
		FROM loan);
		
SELECT 
	account_id, 
	amount 
FROM loan 
ORDER BY account_id 
LIMIT 5;

SELECT 
	account_id 
FROM loan 
WHERE duration == 60 
ORDER BY amount  
LIMIT 5;

--query 8
SELECT 
	DISTINCT k_symbol 
FROM "order"
WHERE k_symbol != " "
ORDER BY k_symbol;

--query 9
SELECT 
	order_id 
FROM "order" 
WHERE account_id == 34;

--query 10
SELECT 
	DISTINCT account_id
FROM "order"
WHERE order_id BETWEEN 29540 AND 29560;

--query 11
SELECT 
	amount
FROM "order"
WHERE account_to == 30067122;

--query 12
SELECT 
	trans_id, 
	"date", 
	type,
	amount, 
	account_id
FROM trans
WHERE account_id = 793
ORDER BY "date" DESC
LIMIT 10;

--query 13
SELECT 
	district_id,
	count(DISTINCT(client_id)) AS clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

--query 14 
SELECT
	type,
	count(*) as cards
FROM card
GROUP BY type
ORDER BY cards DESC;

--query 15
SELECT 
	account_id,
	sum(amount) as total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

--query 16
SELECT 
	"date",
	count(*) as total_loans_issued
FROM loan
WHERE "date" < 930907
GROUP BY "date"
ORDER BY "date" DESC
;
--query 17

SELECT 
	"date",
	duration,
	count(*) as total_loans_issued
FROM loan
WHERE "date" BETWEEN 971200 AND 971231
GROUP BY "date", "duration"
ORDER BY "date", duration ASC
;

--query 18
SELECT 
account_id,
type,
sum(amount) as total_amount
FROM trans
WHERE account_id == 396
GROUP BY type
ORDER BY type ASC














