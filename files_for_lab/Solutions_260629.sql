select client_id FROM client  where	 district_id = 1 LIMIT 5
select client_id from client where district_id = 72  order by client_id DESC limit 1
select amount from loan order by amount limit 3
select DISTINCT status FROM loan  order by status 
SELECT loan_id from loan order by payments desc limit 1;
SELECT account_id, amount from loan order by account_id ASC LIMIT 5
SELECT account_id from loan where duration = 60 order by amount 
SELECT DISTINCT k_symbol from `order` 
SELECT order_id from `order` where account_id=34
Select DISTINCT account_id from `order` where order_id BETWEEN 29540 and 29560
SELECT amount from `order` where account_to = 30067122
SELECT trans_id, date, type, amount from trans where account_id = 793 order by date DESC LIMIT 10
SELECT district_id, count(*) from client where district_id < 10 GROUP by district_id order by district_id
SELECT type, count (*) from card GROUP by type order by count(*) DESC
SELECT account_id, sum(amount) from loan group by account_id order by sum(amount) DESC LIMIT 10
Select date, count(*) FROM loan where date <930907 group by date order by date desc
SELECT date, duration, count (*) FROM loan where date BETWEEN 971200 and 971231 GROUP by date , duration order by date , duration
SELECT account_id, type, sum(amount) from trans where account_id = 396 group by type