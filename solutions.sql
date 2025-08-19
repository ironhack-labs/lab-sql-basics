--Query 1
select client_id from client where district_id = 1;

-- Query 2
select max(client_id) as id from client where district_id = 72;

-- Query 3
select amount from loan 
order by amount
limit 3;

-- Query 4
select DISTINCT status as status from loan
order by status;

-- Query 5
select loan_id from loan order by payments desc limit 1;

-- Query 6
select account_id, amount from loan order by account_id limit 5;

-- Query 7 (doesn't specift how many values required)
select account_id from loan where duration = 60 order by amount limit 5;

-- Query 8
select DISTINCT k_symbol from `order` 
where k_symbol is NOT NULL;

-- Query 9
select order_id from `order` where account_id = 34;

-- Query 10
select DISTINCT account_id from `order` where order_id BETWEEN 29540 and 29560;

-- Query 11
select amount from `order` where account_to = 30067122;

-- Query 12
select trans_id, date, type, amount from trans where account_id = 793 order by date desc limit 10;

-- Query 13
select count(client_id) from client where district_id < 10 group by district_id order by district_id limit 10;

-- Query 14
select type, count(type) as count from card group by type;

-- Query 15
select account_id, sum(amount) as total_amount from loan group by account_id order by total_amount desc limit 10;

-- Query 16
select date, count(account_id) from loan where date < 930907 group by date order by date desc;

-- Query 17 (doubt)
select date, duration, sum(count) from (
select DISTINCT duration, date, count(loan_id) as count from loan where date like '97%' group by date, duration order by date, duration
)p
where count is not null
group by date, duration;

-- Query 18
select account_id, type, sum(amount) as total_amount from trans where account_id = 396 group by account_id, type order by type;


