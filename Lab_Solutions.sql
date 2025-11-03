#Query1
SELECT client_id FROM client WHERE  district_id =1 LIMIT 5;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query2
SELECT *
FROM client
WHERE  district_id =75
ORDER BY client_id DESC
LIMIT 1;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query3
SELECT *
FROM loan
ORDER BY amount ASC
LIMIT 3

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query4
SELECT DISTINCT status
FROM loan

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query5
SELECT MAX(loan_id)
FROM loan


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query6
SELECT loan_id
FROM loan
WHERE payments = (
    SELECT MAX(payments)
    FROM loan
);


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query7
SELECT account_id
FROM loan
WHERE duration = 60 
ORDER BY amount ASC
LIMIT 5;


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query8
SELECT DISTINCT k_symbol
FROM `order` 
WHERE k_symbol IS NOT NULL
  AND k_symbol <> '';


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query9
SELECT order_id
FROM `order` 
WHERE account_id = 34
 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query10
SELECT DISTINCT account_id
FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query11
SELECT amount
FROM `order` 
WHERE account_to = 30067122;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC 
LIMIT  10;
 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query13
SELECT district_id, COUNT (client_id) 
FROM client 
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;  


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query14
SELECT type, COUNT (card_id) 
FROM card
GROUP BY type
ORDER BY type ASC;  


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query15
SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id 
ORDER BY total_amount DESC
LIMIT 10;



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query16
SELECT date, COUNT(*) AS total_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query17
SELECT date, duration, COUNT(*) AS total_loans
FROM loan
WHERE date >= 971201 AND  date <= 971231
GROUP BY date, duration
ORDER BY date ASC;


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Query18
SELECT account_id, type, SUM(amount) AS total_transactions
FROM trans
WHERE account_id = 396 AND (type = 'VYDAJ' OR type = 'PRIJEM')
GROUP BY account_id, type
ORDER BY type ASC;
