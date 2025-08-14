-- 1
SELECT client_id,district_id
FROM client
WHERE client_id AND district_id == 1 
LIMIT 5 ;






-- 2
SELECT client_id,district_id
FROM client
WHERE client_id AND district_id == 72
order by client_id DESC
LIMIT 1;


-- 3
SELECT amount
FROM loan

order by amount ASC
LIMIT 3;

-- 4
SELECT DISTINCT status
FROM loan

order by status ASC 


-- 5
SELECT loan_id, amount
FROM loan

order by amount DESC 

LIMIT 1;


-- 6
SELECT account_id, amount 
FROM loan

order by account_id asc 

LIMIT 5;


-- 7
SELECT account_id
FROM loan
WHERE duration == 60
order by amount asc 

LIMIT 5;

-- 8
SELECT DISTINCT k_symbol
FROM `order`

order by k_symbol ASC
LIMIT 5;

-- 9
SELECT order_id
FROM `order`
WHERE account_id == 34
LIMIT 5;

-- 10
SELECT DISTINCT account_id  
FROM `order`  
WHERE order_id BETWEEN 29540 AND 29560;

-- 11
SELECT amount  
FROM `order`  
WHERE account_to = 30067122;  -- Filter for the specified recipient account

-- 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

-- 13
SELECT district_id, COUNT(client_id) AS num_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- 14
SELECT type, COUNT(*) AS total_cards
FROM card
GROUP BY type
ORDER BY total_cards DESC;

-- 15
SELECT account_id, SUM(amount) AS total_loan
FROM loan
GROUP BY account_id
ORDER BY total_loan DESC
LIMIT 10;

-- 16
SELECT date, COUNT(*) AS num_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- 17
SELECT date, duration, COUNT(*) AS num_loans  
FROM loan  
WHERE date BETWEEN 971201 AND 971231  -- Only Dec 1997 dates
GROUP BY date, duration  -- Count per day & loan duration
ORDER BY date ASC, duration ASC;  -- Sort by date & duration

-- 18
SELECT account_id, type, SUM(amount) AS total_amount  
FROM trans  
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;
