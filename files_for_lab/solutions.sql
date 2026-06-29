SELECT client_id FROM client WHERE district_id == 1 order by client_id LIMIT 5;--q1
SELECT client_id FROM client WHERE district_id == 72 order by client_id DESC LIMIT 1;--q2
SELECT amount FROM loan order by amount LIMIT 3;--q3
SELECT DISTINCT status FROM loan order by status;--q4
SELECT loan_id FROM loan order by payments DESC LIMIT 1;--q5
SELECT account_id,amount FROM loan order by account_id LIMIT 5;--q6
SELECT account_id FROM loan WHERE duration == 60 order by amount LIMIT 5;--q7
SELECT DISTINCT k_symbol FROM `order` order by k_symbol;--q8
SELECT order_id FROM `order` WHERE account_id == 34 order by order_id;--q9
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 and 29560 order by account_id;--q10
SELECT amount FROM `order` WHERE account_to == 30067122;--q11
SELECT trans_id,date,type,amount FROM trans WHERE account_id == 793 order by date DESC LIMIT 10;--q12
SELECT count(client_id) FROM client WHERE district_id < 10 GROUP by district_id order by district_id;--q13
SELECT type, count(card_id) FROM card GROUP by type order by count(type) DESC;--q14
SELECT account_id, sum(amount) FROM loan group by account_id order by sum(amount) DESC limit 10;--q15
SELECT date, count(loan_id) FROM loan WHERE date < 930907 group by date order by date DESC;--q16
SELECT date, duration, count(payments) FROM loan WHERE date like "%9712%" GROUP by date, duration order by date,duration;--q17
SELECT account_id, type, sum(amount) as total_amount FROM trans WHERE account_id == 396 GROUP by type order by type;--q18