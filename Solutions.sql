* ============================================================
   SQL I  -  Week 2, Day 3
   Lab | SQL basics (selection and aggregation)
   Database: lab1_bank.sqlite  (Executed in DB Browser for SQLite)
   ============================================================ */

/* QUERY 1*/ - Get the first 5 clients from district_id = 1.
   
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;


/* QUERY 2*/ - Get the last client from district_id = 72.

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;


/* QUERY 3*/ - Get the lowest loan amount.

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;


/* QUERY 4*/ - Get the unique loan statuses in alphabetical order.

SELECT DISTINCT status
FROM loan
ORDER BY status ASC;



/* QUERY 5*/ - Get the loan_id with the highest payment.

SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;


/* QUERY 6*/ -  Get the loan amount for the 5 lowest account_ids.

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;


/* QUERY 7*/ - Get the 5 account_ids with the lowest loan amounts; among loans with a duration of 60 months.

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;


/* QUERY 8*/ - Get the unique, non-empty k_symbol values from the order table;`order` is escaped because ORDER is a SQL keyword.

SELECT DISTINCT k_symbol
FROM `order`
WHERE TRIM(k_symbol) <> ''
ORDER BY k_symbol ASC;


/* QUERY 9*/ - Get the order_ids belonging to account_id = 34.

SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id ASC;


/* QUERY 10*/ - Get the unique account_ids responsible for orders; with order_id between 29540 and 29560 (inclusive).

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;


/* QUERY 11*/ - Get the individual amounts sent to account_to = 30067122.

SELECT amount
FROM `order`
WHERE account_to = 30067122;


/* QUERY 12*/ - Show the 10 newest transactions from account_id = 793.

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;


/* QUERY 13*/ - Count clients in each district_id below 10.

SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;


/* QUERY 14*/ - Count cards by type, starting with the most frequent type.

SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;



/* QUERY 15*/ - Show the top 10 account_ids by the sum of all loan amounts.

SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;



/* QUERY 16*/ - Count loans issued on each day before 930907.

SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;



/* QUERY 17*/ - For December 1997, count loans by date and duration.

SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;



/* QUERY 18*/ - Sum transaction amounts by type for account_id = 396.

SELECT account_id,
       type,
       SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;


/*End of solutions*/