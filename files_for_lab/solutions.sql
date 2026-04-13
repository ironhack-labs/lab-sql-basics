-- Query 1 Get the id values of the first 5 clients from district_id with a value equals to 1. --
SELECT client_id FROM client WHERE district_id == 1 ORDER BY client_id LIMIT 5;

-- Query 2 In the client table, get an id values of the last client where the district_id equals to 72 --
SELECT MAX(client_id) FROM client WHERE district_id == 72;

-- Query 3 Get 3 lowest amounts in the loan table -- 
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- Query 4 possible values for status, ordered alphabetically in ascending order in the loan table -- 
SELECT DISTINCT status from loan ORDER BY status ASC; 

-- Query 5 load_id of the highest payment received in loan table --
SELECT loan_id FROM loan WHERE payments = (SELECT MAX(payments) FROM loan);

-- Query 6 loan amount of the lowest account_id in the loan table? Show account_id and the corresponding amount --
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

-- Query 7 account id with the lowest loan amount that have a loan duration of 60 in the loan table -- 
SELECT account_id FROM loan WHERE duration = 60 AND amount = (SELECT MIN(amount) FROM loan WHERE duration = 60);

-- Query 8 unique values of k_symbol in the order table ---
SELECT DISTINCT k_symbol FROM `order`;

-- Query 9 in the order table what are the order_id of the client with the account_id 34 --
SELECT order_id FROM `order` WHERE account_id = 34;

-- Query 10 which account_id were responsible for orders between order_id 29540 and 29560 inclusive --
SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11 individual amounts that were sent to account_to id 30067122 --
SELECT amount from `order` WHERE account_to = 30067122;

-- Query 12 10 ten transactions in trans table, show trans_id, date, type, amount -- 
SELECT trans_id, date, type, amount from trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

-- Query 13 in the client table, all districts with a district_id < 10, how many clients are from each district_id --
SELECT district_id, COUNT(*) from client WHERE district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- Query 14 card table, how many cards exists for each type, rank result descending --
SELECT type, COUNT(*) FROM card GROUP BY type ORDER BY COUNT(*) DESC;

-- Query 15 loan table, print top 10 account_id, based on sum of all their loan amounts -- 
SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

-- Query 16 loan table, number of loans issued for each day, before (excl) 930907, ordered by date in descending order --
SELECT date, COUNT(*) FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC;

-- Query 17 loan ignore days without any loans in output -- 
SELECT date, duration, COUNT(*) FROM loan WHERE date > 971130 AND date < 980101 GROUP BY date, duration ORDER BY date ASC;

-- Query 18 add a column -- 
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;











