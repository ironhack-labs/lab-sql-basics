

## QUERY 1

SELECT client_id from client where district_id =1 LIMIT 5


## QUERY 2

SELECT client_id from client where district_id =72
ORDER BY client_id DESC
LIMIT 1


## QUERY 3

SELECT amount from loan
ORDER BY amount ASC
LIMIT 3


## QUERY 4

SELECT DISTINCT status from loan
ORDER BY status ASC


## QUERY 5

SELECT loan_id status from loan
ORDER BY payments DESC
LIMIT 1


## QUERY 6

SELECT account_id, amount from loan
ORDER BY account_id ASC
LIMIT 5


## QUERY 7

SELECT account_id from loan WHERE duration=60
ORDER BY amount ASC
LIMIT 5


## QUERY 8

SELECT DISTINCT k_symbol from 'order'
ORDER BY k_symbol ASC


## QUERY 9

SELECT DISTINCT order_id from 'order' where account_id=34


## QUERY 10

SELECT DISTINCT account_id from 'order' 
WHERE order_id BETWEEN 29540 AND 29560


## QUERY 11

SELECT amount from 'order' 
WHERE account_to = 30067122


## QUERY 12

SELECT trans_id, date, type, amount from trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10


## QUERY 13

SELECT district_id, COUNT(*) AS total_clients from client
WHERE district_id < 10
GROUP BY district_id


## QUERY 14

SELECT type, COUNT(*) AS total_cards from card
GROUP BY type
ORDER BY total_cards DESC


## QUERY 15

SELECT account_id, SUM(amount) AS total_amounts from loan
GROUP BY account_id
ORDER BY total_amounts DESC
LIMIT 10


## QUERY 16

SELECT date, COUNT(*) AS num_loans from loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC


## QUERY 17

SELECT date, duration, COUNT(*) AS num_loans from loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC

## QUERY 18

SELECT account_id, type, SUM(amount) AS total_amount from trans
WHERE account_id=396
GROUP BY type
ORDER BY type ASC
