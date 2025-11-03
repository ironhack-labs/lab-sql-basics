--Query 1
select client_id from client where district_id==1 limit 5;

--Query 2
select client_id from client where district_id==72  order by client_id DESC limit 1;

--Query 3
select amount from loan order by amount limit 3;

--Query 4
SELECT DISTINCT status from loan order by status;

--Query 5
select loan_id  from loan  where  payments in (select max(payments) from loan);

--Query 6
SELECT account_id,amount from loan order by account_id limit 5;

--Query 7
select account_id from loan where duration==60 order by amount  limit 5;

--Query 8
SELECT DISTINCT k_symbol FROM "order" where  k_symbol <> ' ';

--Query 9
SELECT order_id  FROM "order" where account_id==34;

--Query 10
SELECT DISTINCT account_id  FROM "order" where order_id  BETWEEN 29540  and 29560;

--Query 11
SELECT amount  FROM "order"  where account_to=30067122 ;

--Query 12
select trans_id, date, type,amount from trans where account_id=793 order by date  desc limit 10;

--Query 13
select district_id, count(client_id) from client where district_id<10 GROUP by district_id;

--Query 14
select type, count(type) from card GROUP by type;

--Query 15			
select account_id,sum(amount) from loan GROUP by account_id order by amount desc limit 10;

--Query 16
select date,count(date) from loan where date<930907 group by date order by account_id desc;

--Query 17
select date,duration,count(loan_id) from loan where date BETWEEN 971201 and  971231 group by date, duration order by date, duration;

 --Query 18
 select account_id,type,sum(amount) from trans where account_id=396 group by type order by type;







