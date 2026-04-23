--Query 1
--Get the id values of the first 5 clients from district_id with a value equals to 1.
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

--Query 2
--In the client table, get an id value of the last client where the district_id equals to 72.
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

--Query 3
--Get the 3 lowest amounts in the loan table.
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;


--Query 4
--What are the possible values for status, ordered alphabetically in ascending order in the loan table?
select DISTINCT status from loan order by status asc;

--Query 5
--What is the loan_id of the highest payment received in the loan table?
SELECT loan_id from loan order by payments desc limit 1;

--Query 6
--What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
SELECT account_id, amount from loan order by account_id asc limit 5;

--Query 7
--What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT account_id from loan where duration = 60 order by amount asc limit 5;

--Query 8
--What are the unique values of k_symbol in the order table?
--Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. 
--You have to use backticks to escape the order table name.
SELECT DISTINCT k_symbol from 'order' WHERE k_symbol != ' ' order by k_symbol ASC;

--Query 9
--In the order table, what are the order_ids of the client with the account_id 34?
SELECT order_id from 'order' WHERE account_id =34;

--Query 10
--In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT account_id FROM 'order' WHERE order_id >= 29540 AND order_id <= 29560;

--Query 11
--In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
select amount from 'order' where account_to = 30067122;

--Query 12
--In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
select trans_id, date, type, amount from trans where account_id = 793 order by date desc limit 10;

--Query 13
--In the client table, of all districts with a district_id lower than 10, 
--how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
SELECT district_id, COUNT (client_id) from client WHERE district_id < 10  GROUP BY district_id ORDER BY district_id ASC;

--Query 14
--In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
SELECT type, count (card_id) from card GROUP by type order by count (card_id) DESC;

--Query 15
--Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

--Query 16
--In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
SELECT date, COUNT(loan_id) FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

--Query 17
--In the loan table, for each day in December 1997 [971201], count the number of loans issued for each unique loan duration, 
--ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
SELECT date, duration, COUNT(loan_id) FROM loan WHERE date >= 971201 AND date <= 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;

--Query 18
--In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
--Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
SELECT account_id, type, SUM(amount) FROM trans WHERE account_id = 396 GROUP BY type ORDER BY type ASC;