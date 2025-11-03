select client_id from client 
where district_id = 1 limit 5

SELECT client_id 
FROM client 
WHERE district_id = 72 
ORDER BY client_id DESC 
LIMIT 1;

select amount from loan 
order by amount asc
limit 3

select distinct status from loan
order by status asc

select loan_id from loan
order by payments DESC
limit 1

select  account_id, amount from loan 
order by account_id asc
limit 5

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

select distinct k_symbol from `order`

select order_id from `order`
where account_id = 34

select distinct account_id from `order`
where order_id &gt;= 29540 and order_id &lt;= 29560
limit 4

select amount from `order`
where account_to = 30067122

select trans_id, `date`, type, amount
from trans where account_id = 793
order by date desc
limit 10

SELECT district_id, COUNT(client_id) AS client_count
FROM client
WHERE district_id &lt; 10
GROUP BY district_id
ORDER BY district_id ASC;

SELECT type, COUNT(*) AS type_count
FROM card
GROUP BY type
ORDER BY type_count DESC;

SELECT account_id, SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date &lt; 930907
GROUP BY date
ORDER BY date DESC;

SELECT
  date,
  duration,
  COUNT(*) AS loan_count
FROM
  loan
WHERE
  date BETWEEN 971201 AND 971231
GROUP BY
  date,
  duration
ORDER BY
  date ASC,
  duration ASC;
  
  SELECT
  account_id,
  type,
  SUM(amount) AS total_amount
FROM
  trans
WHERE
  account_id = 396
GROUP BY
  type
ORDER BY
  type ASC;
