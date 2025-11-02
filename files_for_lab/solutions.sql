select client_id from client where district_id = 1 limit 5;
select client_id from client where district_id = 72 order by client_id DESC LIMIT 1;
select amount from loan order by amount asc LIMIT 3;
select DISTINCT status from loan order by status asc ;
select loan_id from loan order by payments desc limit 1;
select account_id, amount from loan order by account_id ASC limit 5;
select account_id from loan where duration = 60 order by amount ASC limit 5;
select DISTINCT k_symbol from 'order';
select order_id from 'order' where account_id = 34;
select DISTINCT account_id from 'order' where order_id between 29540 and  29561;
select amount from 'order' WHERE account_to = 30067122;
select trans_id, date, type, amount from trans WHERE account_id = 793 order by date desc limit 10;
SELECT district_id, COUNT(*) AS client_count FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;
SELECT DISTINCT type ,COUNT(*) AS card_count FROM card group by type order by card_count DESC;
SELECT account_id, SUM(amount) AS total_loan FROM loan GROUP BY account_id ORDER BY total_loan DESC LIMIT 10;
SELECT date, COUNT(*) AS loan_count FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;
SELECT date, duration, COUNT(*) AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396 
GROUP BY account_id, type
ORDER BY type ASC;