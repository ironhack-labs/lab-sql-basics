--step 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;

--step 2
SELECT id 
FROM client 
WHERE district_id = 72 
ORDER BY id DESC 
LIMIT 1;

--step 3
SELECT amount 
FROM loan 
ORDER BY amount ASC 
LIMIT 3;
--step 4
SELECT DISTINCT status 
FROM loan 
ORDER BY status ASC;
--step5
SELECT loan_id 
FROM loan 
ORDER BY payment_received DESC 
LIMIT 1;
--step6
SELECT account_id, amount 
FROM loan 
ORDER BY account_id ASC 
LIMIT 5;
--step7
SELECT account_id 
FROM loan 
WHERE duration = 60 
ORDER BY amount ASC 
LIMIT 1;
--step8
SELECT DISTINCT k_symbol 
FROM `order`;
--step9
SELECT order_id 
FROM `order` 
WHERE account_id = 34;
--step10
SELECT DISTINCT account_id 
FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;
--step11
SELECT amount 
FROM `order` 
WHERE account_to = 30067122;
--step12
SELECT trans_id, date, type, amount 
FROM trans 
WHERE account_id = 793 
ORDER BY date DESC 
LIMIT 10;
--step13
SELECT district_id, COUNT(*) AS client_count 
FROM client 
WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC;
--step14
In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

--step15
Using the loan table, print the top 10 account_ids based on 
the sum of all of their loan amounts.
--step16
In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order
--step17
In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.

--step18
In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.







