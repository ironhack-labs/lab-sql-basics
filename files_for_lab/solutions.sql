--Excercises for Lab, Nicole Segura
--Q1 id values of the first 5 clients from district_id with a value equals to 1.
SELECT client_id FROM client WHERE district_id==1 LIMIT 5;
--Q2 id value of the last client where district_id is 72
SELECT client_id FROM client WHERE district_id ==72 ORDER by client_id DESC LIMIT 1;
--Q3 lowest amounts in the loan TABLE
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;
--Q4 Possible values for status from the loan table
SELECT DISTINCT status FROM loan ORDER BY status ASC;
--Q5 loan_id of the highest payment received 
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;
--Q6 What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;
--Q7 What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT account_id FROM loan WHERE duration==60 ORDER BY amount ASC LIMIT 5;
--Q8 What are the unique values of k_symbol in the order table?
SELECT DISTINCT k_symbol FROM `order`;
--Q9 order id from client with account if 34
SELECT order_id FROM `order` WHERE account_id==34;
--Q10 In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT account_id FROM `order` WHERE order_id>=29540 AND order_id<=29560;
--Q11 In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
SELECT amount from `order` WHERE account_to==30067122;
--Q12 In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
SELECT trans_id,date,type,amount FROM trans WHERE account_id == 793 ORDER BY date DESC LIMIT 10;
--Q13 In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
SELECT district_id, COUNT(*) AS "Counts per district_id" FROM client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;
--Q14In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
SELECT type, count(*) AS "Frequency" FROM card GROUP BY type ORDER BY count(*) DESC;
--Q15 Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
SELECT account_id,sum(amount) AS "Total amount" FROM loan GROUP BY account_id ORDER BY sum(amount) DESC LIMIT 10;
--Q16 In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
SELECT date,count(*) AS "Loans per day" FROM loan WHERE DATE < 930907 GROUP BY date;
--Q17 In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
SELECT date, duration, COUNT(*) FROM loan WHERE date LIKE "9712%" GROUP BY date,duration ORDER BY date, duration ASC;
--Q18 In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
SELECT account_id, type, SUM(amount) AS "total_amount" FROM trans WHERE account_id ==396 GROUP BY type ORDER BY type ASC;