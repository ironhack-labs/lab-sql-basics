-- Queary 1 -- 
SELECT client_id FROM client WHERE district_id = 1 
ORDER BY client_id ASC 
LIMIT 5;

-- Query 2: Last client in district 72
SELECT client_id FROM client WHERE district_id = 72 
ORDER BY client_id DESC 
LIMIT 1;

-- Query 3: 3 lowest amounts in loan table
SELECT amount FROM loan 
ORDER BY amount ASC 
LIMIT 3;

-- Query 4: Possible status values alphabetically
SELECT DISTINCT status FROM loan 
ORDER BY status ASC;

-- Query 5: loan_id of the highest payment
SELECT loan_id FROM loan 
ORDER BY payments DESC 
LIMIT 1;

-- Query 6: amount of the lowest 5 account_ids
SELECT account_id, amount FROM loan 
ORDER BY account_id ASC 
LIMIT 5;

-- Query 7: account_ids with lowest amount and duration of 60
SELECT account_id FROM loan WHERE duration = 60 
ORDER BY amount ASC 
LIMIT 5;

-- Query 8: Unique k_symbol in order table (using backticks for reserved word)
SELECT DISTINCT k_symbol FROM `order` WHERE k_symbol <> ' ' 
ORDER BY k_symbol ASC;

-- Query 9: order_ids for account_id 34
SELECT order_id FROM `order` 
WHERE account_id = 34;

-- Query 10: account_ids between order_id 29540 and 29560
SELECT DISTINCT account_id FROM `order` 
WHERE order_id BETWEEN 29540 AND 29560;

-- Query 11: amounts sent to account_to 30067122
SELECT amount FROM `order` 
WHERE account_to = 30067122;

-- Query 12: First 10 transactions for account 793 (newest to oldest)
SELECT trans_id, date, type, amount FROM trans 
WHERE account_id = 793 
ORDER BY date DESC
LIMIT 10;

-- Query 13: Count of clients in districts < 10
SELECT district_id, COUNT(client_id) FROM client 
WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC;

-- Query 14: Count of cards per type
SELECT type, COUNT(card_id) AS number_of_cards FROM card 
GROUP BY type 
ORDER BY number_of_cards DESC;

-- Query 15: Top 10 account_ids by total loan amount
SELECT account_id, SUM(amount) FROM loan 
GROUP BY account_id
ORDER BY SUM(amount) DESC 
LIMIT 10;

-- Query 16: Loans issued per day before 930907
SELECT date, COUNT(loan_id) FROM loan WHERE date < 930907 
GROUP BY date ORDER BY date DESC;

-- Query 17: December 1997 loans by date and duration
SELECT date, duration, COUNT(loan_id) FROM loan 
WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration 
ORDER BY date ASC, duration ASC;

-- Query 18: Total amount per type for account 396
SELECT account_id, type, SUM(amount) AS total_amount FROM trans
WHERE account_id = 396 GROUP BY type 
ORDER BY type ASC;