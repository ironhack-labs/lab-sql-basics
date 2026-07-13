### Query 1

Select *
from client


select client_id
from client
where district_id =1
LIMIT 5;



#### Query 2


select client_id
from client
where district_id =72
order by client_id DESC
limit 1;


### Query 3


select amount
from loan
order by amount ASC
limit 3;


### Query 4


Select distinct status
from loan
order by status;


### Query 5


select  loan_id
from loan
order by payments DESC
limit 1;


### Query 6


select account_id, amount
from loan

order by account_id ASC
limit 5;


### Query 7
select account_id
from loan
where duration =60
order by amount ASC
limit 5;

### Query 8
Select distinct k_symbol
from 'order'
order by k_symbol;


### QUERY 9
select order_id
from 'order' 
WHERE account_id =34;

### Query 10
select distinct account_id
from 'order'
where order_id BETWEEN 29540 and 29560 ;

### Query 11

select distinct amount
from 'order'
where account_to = 30067122;

### Query 12


Select trans_id, date, type, amount
from trans

where account_id =793

order by date DESC
limit 10;


### Query 13
select district_id, count(client_Id)
from client
where district_id <10
group by district_id;


### Query 14
select type, count(card_id)
from card

group by type
order by count(card_id) DESC;


### Query 15

select account_id, sum(amount)
from loan
group by account_id
order by sum(amount) DESC
limit 10;

### Query 16

select date, count(loan_id)
from loan
where date < 930907
group by date
order by date DESC;

### Query 17

select date, duration, count(loan_id)
from loan
where date BETWEEN 971201 and 971231
group by date, duration
order by date, duration ASC;

### Query 18

select account_id, type, sum(amount) as total_amount
from trans

where account_id =396
group by account_id, type;
