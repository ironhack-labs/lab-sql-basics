Query 1:
select client_id
FROM client
WHERE district_id == 1
limit 5;

Query 2:
select client_id
FROM client
WHERE district_id == 72
order by client_id DESC
limit 1;

Query 3:
select amount
from loan
order by amount ASC
limit 3;

Query 4:
select DISTINCT status
from loan
order by status ASC;

Query 5:
select loan_id
from loan
order by payments DESC
LIMIT 1;

Query 6:
select account_id as "#id",amount
from loan
order by account_id ASC
LIMIT 5;

Query 7:
select account_id
from loan
where duration == 60
order by amount ASC
LIMIT 5;

Query 8:
select DISTINCT k_symbol
from 'order'
order by k_symbol asc;

Query 9:
select order_id
from "order"
where account_id == 34;

Query 10:
select DISTINCT account_id
from "order"
where order_id BETWEEN 29540 and 29560;

Query 11:
select amount
from "order"
where account_to is 30067122;

Query 12:
select trans_id,date,type,amount
from trans 
where account_id == 793
order by date DESC
LIMIT 10;

Query 13:
SELECT
    district_id,
    COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

Query 14:
SELECT
    type,
    COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

Query 15:
SELECT
    account_id,
    SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

Query 16:
SELECT
    date,
    COUNT(*) AS num_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

Query 17:
SELECT
    date,
    duration,
    COUNT(*) AS num_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

Query 18:
SELECT
    account_id,
    type,
    SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;


