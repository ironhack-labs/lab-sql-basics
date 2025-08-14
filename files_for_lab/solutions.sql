

-- 1. Get the `id` values of the first 5 clients from `district_id` with a value equals to 1.

SELECT client_id FROM client WHERE district_id=1 LIMIT 5;

-- 2. In the client table, get an id value of the last client where the district_id equals to 72.

SELECT client_id 
FROM client 
WHERE district_id = 72 
ORDER BY client_id DESC 			-- sort descending by client_id to get reverse chronological order
LIMIT 1;							-- we just need the last value

-- 3. Get the 3 lowest amounts in the loan table.

SELECT amount 
FROM loan
ORDER BY amount 
LIMIT 3;


-- 4. What are the possible values for status, ordered alphabetically in ascending order in the loan table?
SELECT DISTINCT status
from loan l
ORDER BY status ASC;


-- 5. What is the loan_id of the highest payment received in the loan table?

SELECT loan_id
FROM loan l 
ORDER BY payments DESC
LIMIT 1;


-- 6. What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

SELECT account_id, amount
FROM loan l 
ORDER BY account_id ASC
LIMIT 5;


-- 7. What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

-- SELECT * FROM loan LIMIT 5;  -- overview

SELECT account_id
FROM loan l 
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;			-- listing lowest 5 loan amounts here, since the task uses the plural

-- 8. What are the unique values of k_symbol in the order table?
-- Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.

SELECT DISTINCT k_symbol FROM `order`;


-- 9. In the order table, what are the order_ids of the client with the account_id 34?

SELECT order_id FROM `order` WHERE account_id = 34;


-- 10. In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560;

-- 11. In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

SELECT amount FROM `order` WHERE account_to = 30067122;


-- 12. In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
--SELECT * FROM trans LIMIT 3;

SELECT trans_id, `date`, `type`, amount 
from trans 
WHERE account_id = 793 
ORDER BY trans_id DESC 				-- assuming that trans_id is also assigned chronologically, sorting descendingly for new-to-old
LIMIT 10;


-- SELECT DISTINCT type FROM trans;
-- is this a dataset from a Russian bank? or somewhere Slavic anyway?

-- 13. In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
SELECT district_id, COUNT(client_id) 
FROM client c 
WHERE district_id < 10
GROUP BY district_id			--	GROUP BY wasn't mentioned at the outset, but seems the most plausible approach
ORDER BY district_ID ASC;



-- 14. In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

SELECT * FROM card LIMIT 5;

SELECT `type`, COUNT(card_id) AS cardcount
from card c 
GROUP BY `type` 
ORDER BY cardcount DESC;


-- 15. Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
SELECT account_id,SUM(amount) AS total
FROM loan l
GROUP BY account_id 
ORDER BY total DESC
LIMIT 10;


-- 16. In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.

SELECT `date`,COUNT(loan_id)
FROM loan l
WHERE `date` < 930907
GROUP BY `date`
ORDER BY `date` DESC;

/* sanity check to make sure that the count is actually working (above result gives only 1 counts)
SELECT "date",COUNT(loan_id) AS loan_per_day
FROM loan
--WHERE "date" < 930907
GROUP BY "date"
ORDER BY loan_per_day DESC;
*/

-- 17. In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
-- sidetracked by not recognising date format (thinking it represents some time of large integer counting from a starting date)

SELECT `date`,duration,COUNT(loan_id) AS lcount
FROM loan
WHERE `date` BETWEEN 971201 AND 971231
GROUP BY `date`,duration
ORDER BY `date`,duration;

-- the proposed solution seems to stop after 25 December for some reason, I've got some more results for the days till the end of the year


-- 18. In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.

SELECT account_id,`type`,SUM(amount) AS total_amount
FROM trans t 
WHERE account_id = 396
GROUP BY `type`
ORDER BY `type`;



