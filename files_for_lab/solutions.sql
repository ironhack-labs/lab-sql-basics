-- query 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;
-- query  2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;
-- query  3
SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;
-- query 4
select status
from loan
group by status
order by status ASC;
-- query 5
select loan_id
from loan
order by payments DESC
limit 1;
-- query 6
select account_id, amount 
from loan
order by account_id
limit 5;
-- query 7
select account_id
from loan
where duration = 60
order by amount
limit 5;
-- query 8
select k_symbol
from `order`
group by k_symbol;
-- query 9 
select order_id
from `order`
where account_id = 34;
-- query 10
select distinct account_id
from `order`
where order_id >= 29540 AND order_id <= 29560;
-- query 11
select distinct amount
from `order`
where account_to = 30067122;
-- query 12
select trans_id, date, type, amount
from trans
where account_id = 793
order by date DESC
limit 10;
-- query 13
select district_id, count(client_id)
from client
where district_id < 10
group by district_id
order by district_id;
-- query 14
select type, count(card_id)
from card
group by type
order by count(card_id) desc;
-- query 15
select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) DESC
limit 10;
-- query 16
select date, count(loan_id) 
from loan
where date < 930907
group by date
order by date DESC;
-- query 17
select date, duration, COUNT(loan_id)
from loan
WHERE date >= 971201 AND date <= 971231
group by date, duration
order by date ASC, duration ASC;
-- query 18
select account_id, type, sum(amount) as total_amount
from trans
where account_id = 396
group by type
order by type ASC
