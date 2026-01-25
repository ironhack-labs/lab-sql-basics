-- Q1

SELECT client_id
FROM client
WHERE district_id = 1
LIMIT 5;

-- Q2

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Q3

SELECT amount
FROM loan
ORDER BY amount asc
LIMIT 3;

-- Q4

SELECT DISTINCT status
FROM loan
order by status;  

-- Q5

SELECT loan_id
FROM loan
order by payments desc
limit 1;

-- Q6

SELECT amount
FROM loan
order by account_id asc
limit 5;

--Q7

SELECT account_id
FROM loan
WHERE duration = 60
Order by amount ASC
limit 5;

-- Q8

SELECT DISTINCT k_symbol
FROM `order`
WHERE k_symbol is not NULL
	and k_symbol <> ' '
order by k_symbol; 

-- Q9

select order_id
from `order`
where account_id = 34;

-- Q10

select distinct account_id
from `order`
where order_id between 29540 and 29560;

-- Q11

select amount
from `order`
where account_to = 30067122;

-- Q12

SELECT trans_id, `date`, type, amount
FROM trans
WHERE account_id = 793
Order by `date` desc
limit 10;

-- Q13

SELECT district_id, count(*) as client_count
FROM client 
WHERE district_id < 10
group by district_id;

-- Q14 

select type, count(*) as type_count
from card
group by type
order by type_count desc;

-- Q15

select
	account_id,
	Sum(amount) as total_loan_amount
from loan
group by account_id
order by total_loan_amount DESC
limit 10;

-- Q16


select 
	`date`,
	count(*) as total_loans
from loan
where `date` < 	930907
group by `date`
order by total_loans DESC;


-- Q17

select
	`date`,
	duration,
	count(*) as loan_count
FROM loan
where `date` between 971201 and 971231
group by `date`, duration
order by `date`, duration ASC;

-- Q18


select
	account_id,
	type,
	sum(amount) as type_summation
	
from trans
where account_id = 396
group by account_id, type








