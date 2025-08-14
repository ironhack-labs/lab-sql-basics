--Query 1
select client_id
from client
where district_id = 1 
limit 5;

--Query 2
select client_id
from client
where district_id = 72
ORDER BY client_id DESC 
LIMIT 1;

--Query 3
SELECT  amount
FROM loan
order by amount ASC
LIMIT 3;

--Query 4
SELECT DISTINCT status
FROM loan
order by status asc;

----Query 5
SELECT loan_id
FROM loan
order by payments DESC
limit 1;

--Query 6
SELECT account_id, amount
FROM loan 
order by account_id ASC 
LIMIT 5;

--Query 7
SELECT account_id
FROM loan
WHERE duration=60
order by amount ASC
LIMIT 5
;

--Query 8 
SELECT DISTINCT k_symbol
FROM `order` ;

--Query 9
SELECT order_id
FROM `order`
WHERE account_id=34;

--Query 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

--Query 11
SELECT amount
FROM `order`
WHERE account_to=30067122;


--SQL Lab
--Query 12
SELECT trans_id, `date`, type, amount
FROM trans
WHERE account_id=793
order by `date` DESC
LIMIT 10;

--Query 13
SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id<10
GROUP by district_id
order by district_id ASC;

--Query 14
SELECT type, count(*) as num_cards
FROM card
group by type 
order by count(*) DESC;

--Query 15
SELECT account_id, sum(amount) as sum_amount
FROM loan
GROUP by account_id
order by sum(amount) DESC
LIMIT 10;

--Query 16
SELECT date, duration, count(loan_id)as loan_count
FROM loan
where date<930907
group by date
order by date DESC;

--Query 17
SELECT date, duration, count(*) as num_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
group by date, duration
order by date, duration ASC;

--Query 18 
SELECT account_id, type, sum(amount) as total_ammount
FROM trans
where account_id=396
GROUP by type
order by type DESC;

