-- 1. First 5 client_id values from district_id = 1
SELECT client_id 
FROM client 
WHERE district_id = 1 
ORDER BY client_id ASC 
LIMIT 5;

-- 2. Last client_id where district_id = 72
SELECT client_id 
FROM client 
WHERE district_id = 72 
ORDER BY client_id DESC 
LIMIT 1;

-- 3. 3 lowest loan amounts
SELECT amount 
FROM loan 
ORDER BY amount ASC 
LIMIT 3;

-- 4. Unique loan status values (alphabetical)
SELECT DISTINCT status 
FROM loan 
ORDER BY status ASC;

-- 5. loan_id of highest payment
SELECT loan_id 
FROM loan 
ORDER BY payments DESC 
LIMIT 1;

-- 6. loan amounts for lowest 5 account_ids
SELECT account_id, amount 
FROM loan 
ORDER BY account_id ASC 
LIMIT 5;

-- 7. account_ids with duration 60 and lowest loan amounts...should the instructions say this is 5? because idk how we would know 
--without the expected results
SELECT account_id 
FROM loan 
WHERE duration == 60 
ORDER BY amount ASC
LIMIT 5; 

-- 8. Unique k_symbol values in `order`
SELECT DISTINCT k_symbol 
FROM `order`
ORDER BY k_symbol ASC;

-- 9. order_ids from account_id = 34
SELECT order_id 
FROM `order` 
WHERE account_id = 34;

-- 10. account_ids for order_id between 29540 and 29560
SELECT DISTINCT account_id 
FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;

-- 11. amounts sent to account_to = 30067122
SELECT amount 
FROM `order` 
WHERE account_to = 30067122;

-- 12. 10 latest transactions from account_id = 793
SELECT trans_id, date, type, amount 
FROM trans
WHERE account_id = 793
ORDER BY date DESC 
LIMIT 10;

-- Query 13: Number of clients per district_id < 10
SELECT district_id, 
COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

-- Query 14: Number of cards per type, sorted by most frequent
SELECT type, COUNT(*) AS count
FROM card
GROUP BY type
ORDER BY count DESC;

-- 15. Using the `loan` table, print the top 10 `account_id`s based on the sum of all of their loan amounts-without sum (gives same results)
SELECT account_id, amount
FROM loan 
ORDER BY amount  DESC 
LIMIT 10;

-- 15. Using the `loan` table, print the top 10 `account_id`s based on the sum of all of their loan amounts0using sum function.
SELECT account_id, SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

-- 16. Loan counts per day before 930907
SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Query 17: Count loans per day and duration in Dec 1997
--note: this includes extra dates because the expected results end on Dec 25th but the instructions say to go for the entire month of Dec. 
SELECT date, duration, COUNT(*) AS count
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

-- Query 18: Sum of transaction amounts by type for account_id = 396
--note mine are rounded to the tenths decimal idk if that is correct but don't know how to make it match the expected.
SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;