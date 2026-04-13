--Query 1

SELECT client_id from client WHERE district_id == 1 limit 5;

--Query 2

select client_id from client where district_id == 72 order by client_id DESC limit 1;


--Query 3

select amount from loan order by amount ASC limit 3;

--Query 4

SELECT DISTINCT status from loan order by status ASC;

--Query 5

SELECT loan_id from loan order by payments DESC limit 1;

--Query 6

SELECT account_id, amount from loan order by account_id, amount ASC limit 5;

--Query 7

SELECT account_id from loan where duration == 60 order by amount ASC;

--Query 8

SELECT DISTINCT k_symbol from `order` where trim(k_symbol) <> '';

--Query 9

SELECT order_id from `order` where account_id == 34;

--Query 10

SELECT DISTINCT account_id from `order` where order_id BETWEEN 29540 AND 29560;

--Query 11

SELECT amount from `order` where account_to == 30067122;

--Query 12

SELECT trans_id, date, type, amount from trans WHERE account_id == 793 order by date DESC LIMIT 10;

--Query 13

SELECT client_id, count(*) from client where district_id < 10 group by district_id order by district_id ASC;

--Query 14

SELECT type, count(*) as frequency from card group by type order by frequency DESC;

--Query 15

SELECT account_id, sum(amount) from loan group by account_id order by amount DESC limit 10;

--Query 16

SELECT date, count(*) as count_value from loan where date < 930907 group by date order by date DESC;

--Query 17

SELECT date, duration, count(*) as count_value from loan where SUBSTR(date, 1, 2) = '97' AND SUBSTR(date, 3, 2) = '12' group by date, duration order by date ASC, duration ASC;

--Query 18

SELECT account_id, type, sum(amount) as total_amount from trans where account_id = 396 group by account_id, type order by account_id, type ASC;





