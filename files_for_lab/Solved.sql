select client_id from client where district_id==1 LIMIT 5;

SELECT client_id 
from client 
where district_id==72 
order by client_id 
DESC limit 1;

SELECT amount
from loan
order by amount ASC
limit 3;

select DISTINCT status
from loan
order by status asc;

SELECT loan_id
FROM loan
WHERE payments = (SELECT MAX(payments) FROM loan);

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

select account_id
from loan
where duration=60
order by amount ASC
limit 5;

select DISTINCT k_symbol
from "order";

select order_id
from "order" 
where account_id=34;

SELECT DISTINCT account_id
FROM "order"
WHERE order_id BETWEEN 29540 AND 29560;

select amount
from "order"
where account_to==30067122;

select trans_id,"date",type, amount
from trans
where account_id=793
order by "date" desc
limit 10;

SELECT district_id, COUNT(*) AS total_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

select type, count(*)
from card
group by type
order by count(*) DESC;

select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) desc
limit 10;

select "date",count(*)
from loan
where date<930907
group by "date"
order by "date" DESC;

select "date", duration,count(*)
from loan
where "date" BETWEEN 971201 and 971231
group by "date"
order by "date" ASC, duration ASC;

SELECT account_id,type, sum(amount)
from trans 
where account_id=396
group by type
order by type