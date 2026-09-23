/* Query 1
Get the `id` values of the first 5 clients from `district_id` with a value equals to 1.*/
SELECT client_id FROM client WHERE district_id = 1 ORDER BY client_id ASC LIMIT 5;

/* ### Query 2
In the `client` table, get an `id` value of the last client where the `district_id` equals to 72.*/
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

/* Query 3
Get the 3 lowest amounts in the `loan` table.*/
SELECT amount FROM loan ORDER BY amount DESC LIMIT 3;

/* Query 4
What are the possible values for `status`, ordered alphabetically in ascending order in the `loan` table?*/
SELECT DISTINCT status FROM loan ORDER BY status ASC;

/* Query 5
What is the `loan_id` of the highest payment received in the `loan` table?*/
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

/* Query 6
What is the loan `amount` of the lowest 5 `account_id`s in the `loan` table? Show the `account_id` and the corresponding `amount`*/
select account_id,amount from loan order by account_id asc limit 5;

/* Query 7
What are the `account_id`s with the lowest loan `amount` that have a loan `duration` of 60 in the `loan` table?*/
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;

/* Query 8
What are the unique values of `k_symbol` in the `order` table?*/
SELECT DISTINCT k_symbol FROM 'order' where k_symbol != " ";

/* Query 9
In the `order` table, what are the `order_id`s of the client with the `account_id` 34?*/
SELECT order_id FROM 'order' where account_id = 34;

/* Query 10
In the `order` table, which `account_id`s were responsible for orders between `order_id` 29540 and `order_id` 29560 (inclusive)?*/
SELECT account_id FROM 'order' where order_id >= 29540 and order_id <= 29560;

/* Query 11
In the `order` table, what are the individual amounts that were sent to (`account_to`) id 30067122?*/
SELECT amount FROM 'order' where account_to = 30067122;

/* Query 12
In the `trans` table, show the `trans_id`, `date`, `type` and `amount` of the 10 first transactions from `account_id` 793 in chronological order, from newest to oldest.*/
SELECT trans_id, date, type, amount FROM trans where account_id = 793 order by date desc limit 10;

/* Query 13
In the `client` table, of all districts with a `district_id` lower than 10, how many clients are from each `district_id`? Show the results sorted by the `district_id` in ascending order.*/
SELECT district_id, count(district_id) FROM client where district_id <10 GROUP BY district_id;

/* Query 14*/
SELECT type, count(type) FROM card GROUP BY type ORDER BY type;

/* Query 15*/
SELECT account_id, amount FROM loan ORDER BY amount desc limit 10;

/* Query 16*/
SELECT date,count(*) FROM loan where date < 930907 group by date ORDER BY date desc;

/* Query 17*/
SELECT date,duration,count(*) FROM loan where date between 971201 and 971231 group by date ORDER BY date asc, duration asc;

/* Query 18*/
SELECT account_id, type, sum(amount) FROM trans where account_id = 396 group by account_id, type ORDER BY type asc;