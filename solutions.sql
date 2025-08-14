-- 1.
select client_id from client
where district_id = 1
limit 5;

-- 2.
select client_id from client
where district_id = 72
order by client_id desc
limit 1;

-- 3.
select amount from loan
order by amount
limit 3;

-- 4.
select distinct status from loan
order by status;

-- 5. solution says loan_id = 6312 but payment value for that is lower than id 6415
select loan_id from loan
order by payments desc
limit 1;

-- 6.
select account_id, amount from loan
order by account_id
limit 5;

-- 7.
select account_id from loan
where duration = 60
order by amount
limit 5;

-- 8.
select distinct k_symbol from `order`
where k_symbol != '' and k_symbol is not null;

-- 9.
select * from `order`
where account_id = 34;

-- 10.
select account_id from `order`
where order_id between 29540 and 29560
group by account_id;

-- 11.
select amount from `order`
where account_to = 30067122;

-- 12.
select trans_id, date, type, amount from trans
where account_id = 793
order by date desc
limit 10;

-- 13.
select district_id, count(client_id) from client
where district_id < 10
group by district_id;

-- 14.
select type, count(*) from card
group by type
order by count(*) desc;

-- 15.
select account_id, sum(amount) from loan
group by account_id
order by sum(amount) desc
limit 10;

-- 16.
select date, count(*) from loan
where date < 930907
group by date
order by date desc;

-- 17.
select date, duration, count(*) from loan
where date regexp '^9712'
group by date, duration
order by date, duration;

-- 18.
select account_id, type, sum(amount) as total_amount from trans
where account_id = 396
group by account_id, type;


