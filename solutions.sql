QUERY 1:

SELECT client_id 
FROM client 
WHERE district_id = 1
LIMIT 5



QUERY 2: 
select client_id 
FROM client
where district_id = 72 
ORDER BY client_id DESC
LIMIT 1


QUERY 3: 
select amount 
FROM loan
ORDER BY amount ASC
LIMIT 3


QUERY 4: 
select DISTINCT status 
FROM loan
ORDER BY status ASC 


QUERY 5: 
select loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1 


QUERY 6: 
select account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5


QUERY 7: 
select account_id
FROM loan
WHERE duration = 60 
ORDER BY amount ASC
LIMIT 5


QUERY 8: 
select DISTINCT k_symbol
FROM `order` 

QUERY 9: 
select `order_id`
FROM `order`
where account_id = 34 

QUERY 10: 
select DISTINCT account_id 
FROM `order`
where `order_id` >= 29540 AND `order_id`<=29560

QUERY 11: 
select  amount
FROM `order`
where account_to = 30067122


QUERY 12: 
select  trans_id, date, type, amount
FROM trans
where account_id = 793
ORDER BY date desc 
limit 10

QUERY 13: 
select  district_id,  count(client_id)
FROM CLIENT
where district_id < 10
group by district_id
order by district_id asc


QUERY 14: 
select  type, count(card_id)
FROM Card
group by type
order by count(Card_id) desc


QUERY 15: 
select account_id, amount
FROM LOAN
group by amount
order by amount desc
limit 10 


QUERY 16: 
select date, count(loan_id) 
FROM LOAN
where date < 930907
group by loan_id
order by DATE desc
limit 10 



QUERY 17: 
select date, duration, count(*) as loan_count 
FROM LOAN
where date >= 971201 and date<=971231
group by date, duration
order by DATE asc, duration desc


QUERY 18: 
select account_id, type, Sum(amount) as total_amount  
FROM TRANS
where ACCOUNT_ID = 396  
group by type
order by type asc
