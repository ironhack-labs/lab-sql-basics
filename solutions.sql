-- Query 1
SELECT client_id From client WHERE district_id = 1 LIMIT 5;

-- Query 2
SELECT client_id From client WHERE district_id = 72 order by client_id DESC LIMIT 1;

-- Query 3
SELECT amount From loan order by amount LIMIT 3;

-- Query 4
SELECT distinct status From loan order by status;

-- Query 5
SELECT loan_id FROM loan WHERE payments = (SELECT max(payments)FROM loan );

-- Query 6
SELECT account_id ,amount From loan order by account_id LIMIT 5;

-- Query 7
SELECT account_id ,amount, duration  From loan WHERE duration = 60 order by amount LIMIT 5;

-- Query 8
SELECT DISTINCT  k_symbol  From `order` order by k_symbol;

-- Query 9
SELECT order_id From `order` where account_id = 34;

-- Query 10
SELECT distinct account_id From `order` where order_id between 29540 and 29560 ;

-- Query 11
SELECT amount From `order` where account_to = 30067122;

-- Query 12
SELECT trans_id, date, type, amount From trans where account_id = 793 order by date desc limit 10;

-- Query 13
SELECT district_id , count(client_id) From client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ;

-- Query 14
SELECT type , count(card_id) From card GROUP BY type ORDER BY card_id DESC  ;

-- Query 15
SELECT account_id , sum(amount) From loan GROUP BY account_id ORDER BY amount DESC limit 10;

-- Query 16
SELECT date , count(loan_id) From loan GROUP BY date ORDER BY date;

-- Query 17
SELECT  date, duration , count(loan_id) From loan where date between 971200 and 971231 GROUP BY date, duration ORDER BY date, duration;

-- Query 18
SELECT account_id, type, sum(amount) as total_amount  From trans where account_id = 396 GROUP by type ;


