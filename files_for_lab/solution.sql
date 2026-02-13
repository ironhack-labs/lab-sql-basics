SELECT client_id FROM client
WHERE district_id =1
LIMIT 5;


SELECT client_id FROM client
where disp_id = 72 
oder by client DESC
limit 1;

SELECT amount from loan
order by amount ASC
limit 5;

SELECT status from loan
order by  by status asc
LIMIT 3;

SELECT loan_id FROM loan
order by payement ASC;
LIMIT 1;

SELECT account_id, amount from loan
order by account_id ASC
LIMIT 5;

select account_id from loan
WHERE duration = 60
order by amount ASC 
LIMIT 5;

SELECT DISTINCT k_symbol FROM `order` 
WHERE k_symbol <> ' ' 
ORDER BY k_symbol ASC;

SELECT order_id FROM `order` 
WHERE account_id = 34;

SELECT DISTINCT account_id FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;

SELECT amount FROM `order` 
WHERE account_to = 30067122;

SELECT trans_id, date, type, amount FROM trans 
WHERE account_id = 793 
ORDER BY date DESC 
LIMIT 10;

SELECT district_id, COUNT(client_id) FROM client 
WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC;

SELECT type, COUNT(card_id) AS total FROM card 
GROUP BY type 
ORDER BY total DESC;

SELECT account_id, SUM(amount) AS total_amount FROM loan 
GROUP BY account_id 
ORDER BY total_amount DESC 
LIMIT 10;

SELECT date, COUNT(loan_id) FROM loan 
WHERE date < 930907 
GROUP BY date 
ORDER BY date DESC;

SELECT date, duration, COUNT(loan_id) FROM loan 
WHERE date LIKE '9712%' 
GROUP BY date, duration 
ORDER BY date ASC, duration ASC;

SELECT account_id, type, SUM(amount) AS total_amount FROM trans 
WHERE account_id = 396 
GROUP BY type 
ORDER BY type ASC;







 


