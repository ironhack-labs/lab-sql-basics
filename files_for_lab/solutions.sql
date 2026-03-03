Query 1
SELECT  client_id FROM client
where district_id ==1
LIMIT 5;

Query 2
SELECT  client_id FROM client
where district_id = 72
Order by client_id DESC
LIMIT 1

Query 3
SELECT  amount FROM loan
Order by amount ASC
LIMIT 3;

Query 4
SELECT  DISTINCT status FROM loan
Order by status ASC

Query 5
SELECT  loan_id FROM loan
Order by payments DESC
LIMIT 1

Query 6
SELECT  account_id, amount FROM loan
Order by account_id ASC
LIMIT 5

Query 7
SELECT  account_id FROM loan
WHERE duration =60
Order by amount ASC
LIMIT 5

Query 8
SELECT DISTINCT k_symbol FROM 'order'
Order by k_symbol ASC

Query 9
SELECT order_id FROM 'order'
WHERE account_id =34

Query 10
SELECT DISTINCT account_id FROM 'order'
WHERE order_id BETWEEN  29540 and 29560

Query 11
SELECT amount FROM 'order'
WHERE account_to = 30067122

Query 12
SELECT amount FROM 'order'
WHERE account_to = 30067122

Query 13
SELECT district_id, COUNT(*)  FROM client 
WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC

Query 14
SELECT type, count (*) FROM card
GROUP by type

Query 15
SELECT account_id, amount FROM loan
order by amount DESC
LIMIT 10

Query 16
SELECT date, count (*) FROM loan
WHERE date < 930907
GROUP BY date
order by date DESC

Query 17
SELECT date, duration, count ( *)FROM loan
WHERE date  BETWEEN 971201 and 971231
GROUP by date, duration
order by date asc, duration ASC

Query 18
SELECT account_id, type,  sum(amount) as total_amount FROM trans
WHERE account_id = 396
GROUP by account_id, type
order by type ASC
