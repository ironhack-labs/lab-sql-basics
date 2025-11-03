select  * 
from 
client
where district_id=1
order by client_id
limit 5 ;

select max(client_id)
from client
where district_id = 72;

select amount from loan
order by amount 
limit 3;

select distinct status
from loan
order by status;


select loan_id 
from loan where 
payments = 
(select  max(payments)
from loan) ;

select account_id, amount
from loan
order by account_id 
limit 5 ;

select account_id
from loan
where duration = 60
order by amount 
limit 5
;

select distinct k_symbol
from `order`;

select order_id from 
`order`
where account_id= 34 ;


select distinct account_id
from `order`
where order_id 
BETWEEN 29540 and 29560 ;

select amount from `order`
where account_to = 30067122 ;

select trans_id, date, type, amount 
from trans
where account_id = 793
order by date desc
limit 10;

select  count (client_id)
from client
where district_id <10
group by district_id
order by district_id asc;

select type, count(distinct card_id) as card_count
 from card
group by type 
order by  card_count  desc;

select account_id,  sum( amount) as loan_sum
 from loan
group by account_id 
order by  loan_sum  desc
limit 10;

select date, count(loan_id)
from loan
where date < 930907
group by date
order by date desc ;

select date, duration, count (distinct loan_id)  as cnt
from loan
where date BETWEEN  971201 and 971231
group by date, duration
order by date, duration ;


select account_id, type, sum(amount) as total_amount
from trans
where account_id = 396
group by type
order by type







