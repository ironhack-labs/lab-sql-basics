-- query 1  --
SELECT client_id
FROM client  
WHERE district_id = 1
LIMIT 5

-- query 2 --
SELECT client_id
FROM client
WHERE district_id = 72
order by client_id DESC
LIMIT 1

-- query 3 --
SELECT amount
FROM loan
order by amount
LIMIT 3

-- query 4 --
SELECT DISTINCT status
FROM loan    
order by status

-- query 5 --

SELECT loan_id
FROM loan
order by payments DESC
LIMIT 1

-- query 6 -- 

SELECT account_id, amount
FROM loan
order by account_id
LIMIT 5

-- query 7 -- 

SELECT account_id
from loan
WHERE duration = 60
order by amount
LIMIT 5

-- query 8 --  

SELECT DISTINCT k_symbol
FROM 'order'
ORDER BY k_symbol;

-- query 9 --

SELECT order_id
FROM 'order'
WHERE account_id = 34

-- query 10 --

SELECT DISTINCT account_id
FROM 'order'
WHERE order_id > 29540 and order_id < 29560

-- query 11 --

SELECT amount
FROM 'order'
WHERE account_to = 30067122

-- query 12 --

SELECT trans_id, date, type, amount 
FROM trans
where account_id = 793
order by date DESC
LIMIT 10

-- query 13 --

SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- query 14 --

SELECT type, count(*) as n_cards
FROM card
group by type 
order by type 

-- query 15 --

SELECT  account_id, sum(amount) as amount_account
FROM loan
GROUP by account_id
order by amount_account DESC
LIMIT 10

-- query 16 --

SELECT date, count(*) as n_loans
FROM loan
group by date
HAVING date < 930907
order by date DESC


-- query 17 --

SELECT date, duration, COUNT(*) AS loan_count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- query 18 --

SELECT * from trans

SELECT account_id, type, sum(amount) as total_amount
from trans
group by account_id, type
HAVING account_id = 396
order by type