-- 1. (Get the id values of the first 5 clients from district_id with a value equals to 1).
SELECT client_id
FROM client --starts with client table as data source; every row in client considered
WHERE district_id = 1 -- filters the big set down to rows that are equal to 1
ORDER BY client_id -- sort the selected id 
LIMIT 5; -- after sorting keep only top/first 5

--  2. (In the client table, get an id value of the last client where the district_id equals to 72)
SELECT MAX(client_id) AS last_id --apply aggregate function MAX to the remaining selected rows; as last_id - renames the output column to last_id for readability
FROM client -- start with the client table as dataset
WHERE district_id = 72; -- filter the rows to only where district_id = 72

-- 3. Get the 3 lowest amounts in the loan table.
SELECT amount
FROM loan -- the database starts with all rows in the loan table
WHERE amount IS NOT NULL -- filter out rows where amount is null
ORDER BY amount ASC -- sort remaining rows by amount column in ascending order (smallest to largest)
LIMIT 3; -- only first 3


-- 4.What are the possible values for status, ordered alphabetically in ascending order in the loan table?

SELECT DISTINCT status -- returns each status only once
FROM loan -- the database starts with all rows in the loan table
WHERE status IS NOT NULL -- drop NULLs(optional)
ORDER BY status ASC; -- from A to Z

-- 5. What is the loan_id of the highest payment received in the loan table?
SELECT loan_id -- project only the loan-Id column from rows that pass the filter criteria
FROM loan -- start with all rows in loan table
WHERE payments = (  -- subquery
  SELECT MAX(payments) -- scan the same loan table and compute the maximum value in payment table
  FROM loan
);

-- 6. What is the loan amount of the lowest 5 account_ids in the loan table?
--    Show the account_id and the corresponding amount
SELECT account_id, amount -- return just these two columns for the filtered rows
FROM loan -- daraset from loan table
ORDER BY account_id ASC -- sort the filtered rows by account_id
LIMIT 5; -- after sorting, keep only the first 5

-- 7. What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT account_id
FROM loan -- loan table rows to be filtered
WHERE duration = 60 -- filter down only row whose duration = 60
ORDER BY amount ASC -- ammount ascending - smaller loan ammount first
LIMIT 5;

-- 8. What are the unique values of k_symbol in the order table?
-- Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. 
-- You have to use backticks to escape the order table name.
SELECT DISTINCT k_symbol -- returns each k_symbol only once
FROM 'order' -- backticks 'order' escape the reserved word
WHERE k_symbol IS NOT NULL -- drops NULLs; should be removed if nulls are required
ORDER BY k_symbol ASC;

-- 9. In the order table, 
-- what are the order_ids of the client with the account_id 34?
SELECT order_id -- return just order_id column from filtered row
FROM 'order' -- query the table named 'order' (backtics required because ORDER is SQL keyword)
WHERE account_id = 34 -- filter rows to only those belonging to account 34
ORDER BY order_id ASC; -- sort resulting order IDs from smallest to largest

-- 10. In the order table, which account_ids were responsible 
-- for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT account_id -- account_id appear once
FROM 'order' -- escapes the reserved word
WHERE order_id BETWEEN 29540 AND 29560 -- includes both endpoints
ORDER BY account_id ASC; -- sorts them out in ascending order

-- 11. In the order table, what are the individual amounts 
-- that were sent to (account_to) id 30067122?
SELECT DISTINCT amount -- returns each amount only once
FROM 'order' -- escape the reserved word
WHERE account_to = 30067122 -- picks transfers sent to this account
ORDER BY amount ASC; --optional

-- 12. In the trans table, show the trans_id, date, 
-- type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
SELECT
	trans_id,
	'date',
	type,
	amount
FROM trans
WHERE account_id = 793 -- filters to that account
ORDER BY 'date' DESC, trans_id DESC -- puts newest transactions first; trans_id DESC breaks ties for identical dates
LIMIT 10; -- return the most recent 10 rows

-- 13. In the client table, of all districts with a district_id lower than 10, 
-- how many clients are from each district_id? 
-- Show the results sorted by the district_id in ascending order.
SELECT
	district_id,
	COUNT(*) AS client_count -- counts clients per district_id
FROM client
WHERE district_id < 10 --filters to districts 1-9
GROUP BY district_id
ORDER BY district_id ASC; -- results are ordered by disttrict_id ascending

-- 14. In the card table, how many cards exist for each type? 
-- Rank the result starting with the most frequent type.
SELECT
	type,
	COUNT(*) AS card_count -- counts cards in each group
FROM card
GROUP BY type -- groups rows by card type
ORDER BY card_count DESC, type ASC; -- tie breaker by type name
-- ranks from most to least frequent 

-- 15. Using the loan table, print the top 10 account_ids 
-- based on the sum of all of their loan amounts.
SELECT
	account_id,
	SUM(amount) AS total_amount
FROM loan
GROUP BY account_id
ORDER BY total_amount DESC, account_id ASC
LIMIT 10;

-- 16. In the loan table, retrieve the number of loans issued for each day, 
-- before (excl) 930907, ordered by date in descending order.
SELECT
	[date],
	COUNT(*) AS loans_issued
FROM loan
WHERE [date] < CAST ('930907' AS date) -- date before 930907 (excluded)
GROUP BY [date] -- date counts how many loans per day
ORDER BY [date] DESC; -- list newest to oldest

-- 17. In the loan table, for each day in December 1997, 
-- count the number of loans issued for each unique loan duration, 
-- ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.

SELECT
  "date" AS day,
  duration,
  COUNT(*) AS loan_count
FROM loan
WHERE CAST("date" AS INTEGER) BETWEEN 971201 AND 971231 -- filters DEC 1-31 1997
GROUP BY "date", duration -- group by date and duration
ORDER BY "date" ASC, duration ASC; -- order by date, then duration ascending

-- 18. In the trans table, for account_id 396,
--  sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
-- GROUP BY on type for that account and sort A→Z:

SELECT -- outputs account-id, type, and total_amount
  account_id,
  type,
  SUM(amount) AS total_amount -- sum amount per type (incoming, outgoing)
FROM trans
WHERE account_id = 396 -- filter to account 396
GROUP BY account_id, type
ORDER BY type ASC; -- order A-Z

