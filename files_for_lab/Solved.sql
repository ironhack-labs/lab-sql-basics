/* Query 1: Top 5 clients in district 1 */
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;

/* Query 2: The highest client_id in district 72 */
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

/* Query 3: The 3 smallest loan amounts */
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

/* Query 4: Unique loan statuses in alphabetical order */
SELECT DISTINCT status FROM loan ORDER BY status ASC;

/* Query 5: The loan_id with the highest monthly payments */
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

/* Query 6: The first 5 loans by account_id */
SELECT account_id AS id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

/* Query 7: Account IDs for 5-year loans, sorted by total amount */
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC;

/* Query 8: What are the unique values of k_symbol in the order table? */
SELECT DISTINCT k_symbol FROM `order`;


/* Query 9: In the order table, what are the order_ids of the client with the account_id 34?  */
SELECT order_id FROM `order` WHERE account_id = 34;
/* Query 10: */
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560;

/* Query 11: In the order table, what are the individual amounts that were sent to (account_to) id 30067122?*/
SELECT amount FROM `order` WHERE account_to = 30067122;

/* Query 12: In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.*/
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC;

/* Query 13: In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.*/
SELECT district_id, COUNT(client_id) AS client_id FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

/* Query 14: In the card table, how many cards exist for each type? Rank the result starting with the most frequent type. */
SELECT type, COUNT(type) AS type FROM card GROUP BY type ORDER BY type DESC;

/* Query 15: Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.*/
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

/* Query 16: In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order. */
SELECT date , COUNT(loan_id) FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

/* Query 17:  */
SELECT date, duration, COUNT(loan_id) FROM loan WHERE date > 971201 and date < 980101 GROUP BY date, duration ORDER BY duration;

/* Query 18: In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type. */
SELECT account_id, type, SUM(amount) FROM trans WHERE account_id = 396 GROUP BY type ORDER BY type ASC;

