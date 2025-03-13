--q1
/*
SELECT client_id FROM client
WHERE district_id =1
LIMIT 5;
*/

--q2
/*
SELECT client_id 
FROM client 
WHERE district_id=72
ORDER BY district_id DESC 
LIMIT 1;
*/

--q3
/*
SELECT amount 
FROM loan 
ORDER BY amount ASC LIMIT 3;
*/

--q3
/*
SELECT amount 
FROM loan 
ORDER BY amount ASC LIMIT 3;
*/

--q4
/*
SELECT DISTINCT status 
FROM loan 
ORDER BY status ASC;
*/


--q5
/*
SELECT DISTINCT loan_id 
FROM loan 
ORDER BY payments DESC
LIMIT 1;
*/

--q6
/*
SELECT account_id , amount 
FROM loan 
ORDER BY account_id ASC
LIMIT 5;
*/

--q7
/*
SELECT account_id
FROM loan 
WHERE duration=60
ORDER BY amount ASC 
LIMIT 5;
*/

--q8
/*
SELECT DISTINCT k_symbol
FROM 'order'
ORDER BY k_symbol ASC;
*/


--q9
/*
SELECT order_id
FROM 'order'
WHERE account_id=34;
*/

--q10
/*
SELECT DISTINCT account_id
FROM 'order'
WHERE order_id BETWEEN 29540 AND 29560;
*/

--q11
/*
SELECT amount
FROM 'order'
WHERE account_to= 30067122;
*/

--q12
/*
SELECT trans_id , date , type , amount
FROM trans
WHERE account_id=793
ORDER BY date DESC
LIMIT 10;
*/

--q13
/*
SELECT district_id , COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;
*/

--q14
/*
SELECT type, COUNT(*) as card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;
*/

--q15
/*
SELECT account_id, SUM(amount) as total_loan
FROM loan
GROUP BY account_id
ORDER BY total_loan DESC
LIMIT 10;
*/


--q16
/*
SELECT date, COUNT(*) as loan_count
FROM loan
WHERE date < '930907'
GROUP BY date
ORDER BY date DESC;
*/


--q17
/*
SELECT date, duration, COUNT(*) as loan_count
FROM loan
WHERE date >= '971201' AND date <= '971231'
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

*/



--q18
/*
SELECT account_id, type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;
*/

