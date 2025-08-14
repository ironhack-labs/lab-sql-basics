SELECT * FROM client LIMIT 10

-- Query 1: Get the id values of the first 5 clients from district_id = 1
SELECT client_id
from client 
WHERE district_id = 1
LIMIT 5;

-- Query 2: Get the id value of the last client where district_id = 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC 
LIMIT 1;

-- Query 3: Get the 3 lowest amounts in the loan table
SELECT amount
FROM loan
ORDER BY amount ASC 
LIMIT 3;

-- Query 4: Possible values for status in the loan table, ordered alphabetically
SELECT DISTINCT status 
FROM loan 
ORDER BY status ASC;

-- Query 5: loan_id of the highest payment received in the loan table
SELECT loan_id 
FROM loan 
ORDER BY payments DESC 
LIMIT 1;

-- Query 6: loan amount of the lowest 5 account_ids
SELECT account_id, amount 
FROM loan 
ORDER BY account_id ASC 
LIMIT 5;

-- Query 7: account_ids with the lowest loan amount that have a loan duration of 60
SELECT account_id 
FROM loan 
WHERE duration = 60 
ORDER BY amount ASC 
LIMIT 5;

-- Query 8: Unique values of k_symbol in the order table
SELECT DISTINCT k_symbol 
FROM `order`
ORDER BY k_symbol ASC;

-- Query 9: order_ids of the client with account_id 34
SELECT order_id 
FROM `order` 
WHERE account_id = 34;

-- Query 10: account_ids responsible for orders between order_id 29540 and 29560
SELECT DISTINCT account_id 
FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11: Individual amounts sent to (account_to) id 30067122
SELECT DISTINCT amount
FROM trans
WHERE account = 30067122;

-- Query 12: Show trans_id, date, type, and amount of the first 10 transactions from account_id 793 in descending order
SELECT trans_id, date, type, amount 
FROM trans 
WHERE account_id = 793 
ORDER BY date DESC 
LIMIT 10;

-- Query 13: Number of clients from each district_id lower than 10
SELECT district_id, COUNT(client_id) 
FROM client 
WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC;

-- Query 14: Count the number of cards for each type, ranked by most frequent
SELECT type, COUNT(*) AS total_cards 
FROM card 
GROUP BY type 
ORDER BY total_cards DESC;

-- Query 15: Top 10 account_ids based on the sum of their loan amounts
SELECT account_id, SUM(amount) AS total_loan 
FROM loan 
GROUP BY account_id 
ORDER BY total_loan DESC 
LIMIT 10;

-- Query 16: Number of loans issued for each day before (excluding) 930907
SELECT date, COUNT(*) AS num_loans 
FROM loan 
WHERE date < 930907 
GROUP BY date 
ORDER BY date DESC;

-- Query 17: Count the number of loans issued per unique loan duration for each day in December 1997
SELECT date, duration, COUNT(*) 
FROM loan 
WHERE date BETWEEN 971201 AND 971231 
GROUP BY date, duration 
ORDER BY date ASC, duration ASC
LIMIT 14;

-- Query 18: Sum the amount of transactions for account_id 396 grouped by type
SELECT account_id, type, SUM(amount) AS total_amount 
FROM trans 
WHERE account_id = 396 
GROUP BY type 
ORDER BY type ASC;