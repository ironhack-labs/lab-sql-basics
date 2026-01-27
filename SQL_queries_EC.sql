-- Q1 --
SELECT client_id
FROM client
WHERE district_id ==1
LIMIT 5;

-- Q2 --
SELECT client_id
FROM client
WHERE district_id ==72
ORDER BY client_id DESC
LIMIT 1;

-- Q3 --
SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

-- Q4 --
SELECT DISTINCT status
FROM loan
ORDER BY status;

-- Q5 --
SELECT loan_id
FROM loan
Order BY payments DESC
LIMIT 1;

-- Q6 --
SELECT account_id, amount
FROM loan
ORDER BY account_id
LIMIT 5;

-- Q7 --
SELECT account_id
FROM loan
WHERE duration == 60
ORDER BY amount 
limit 5;

-- Q8 --
SELECT DISTINCT k_symbol
FROM `order`;

-- Q9 --
SELECT order_id
FROM `order`
WHERE account_id is 34;

-- Q10 --
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Q11 --
SELECT DISTINCT amount
FROM `order`
WHERE account_to is 30067122;

-- Q12 /**/
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id is 793
ORDER BY date DESC
LIMIT 10;

-- Q13 --
SELECT COUNT(*)
FROM client
WHERE district_id <10
GROUP BY district_id
ORDER BY district_id;

-- Q14 --
SELECT type, COUNT(*)
FROM card
GROUP BY type
ORDER BY COUNT(*) DESC;

-- Q15 --
SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- Q16 --
SELECT date, COUNT(*)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Q17 --
SELECT date, duration , COUNT(*)
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY duration
ORDER BY date ; --AND duration

-- Q18 --
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id == 396
GROUP BY type;