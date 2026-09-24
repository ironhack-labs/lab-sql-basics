/* ============================================================
   SQL I  -  Week 2, Day 3, Lab 2
   Database: lab1_bank.sqlite  (open it in DB Browser for SQLite)

   ============================================================ */
/* Query 1 */
	SELECT client_id
	FROM client
	WHERE district_id = 1
	LIMIT 5;

/* Query 2 */
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

/* Query 3 */
SELECT amount
FROM loan
ORDER BY amount ASC
Limit 3;

/* Query 4 */
SELECT status
FROM loan
GROUP BY status
ORDER BY status ASC;

/* QUERY 5 */
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;
/* QUERY 6 */
SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

/* QUERY 7 */
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC;

/* QUERY 8 */
SELECT DISTINCT k_symbol
FROM 'order';

/* QUERY 9 */
SELECT order_id
FROM 'order'
WHERE account_id = 34;

/* QUERY 10 */
SELECT DISTINCT account_id
FROM 'order'
WHERE order_id >= 29540 and order_id<= 29560;

/* QUERY 11 */
SELECT amount
FROM 'order'
Where account_to = 30067122;

/* QUERY 12 */
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 739
ORDER BY date DESC
LIMIT 10;

/* QUERY 13 */
SELECT district_id, count(client_id)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

/* QUERY 14 */
SELECT type,COUNT(card_id)
FROM card
GROUP BY type
ORDER BY COUNT(card_id) DESC;

/* QUERY 15 */
SELECT account_id, sum(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;


/* QUERY 16 */
SELECT date, count(loan_id)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

/* QUERY 17 */
SELECT date, duration, count(loan_id)
FROM loan
WHERE date<= 971231 and date>= 971201 
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

/* QUERY 18 */
SELECT account_id, type, sum(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;

