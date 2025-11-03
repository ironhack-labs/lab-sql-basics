<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="lab1_bank.sqlite" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="pragmas query browser structure" current="1"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2280"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="0" parent="0"/><expanded_item id="2" parent="0"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="account" custom_title="0" dock_id="1" table="4,7:mainaccount"/><table title="card" custom_title="0" dock_id="2" table="4,4:maincard"/><dock_state state="000000ff00000000fd0000000100000002000003440000043dfc0100000001fc00000000000003440000012300fffffffa000000010100000002fb000000160064006f0063006b00420072006f00770073006500310100000000ffffffff0000012300fffffffb000000160064006f0063006b00420072006f00770073006500320100000000ffffffff0000011800ffffff0000027e0000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="account" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="81"/><column index="2" value="75"/><column index="3" value="125"/><column index="4" value="50"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="card" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="58"/><column index="2" value="56"/><column index="3" value="43"/><column index="4" value="96"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="order" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="63"/><column index="2" value="81"/><column index="3" value="61"/><column index="4" value="82"/><column index="5" value="57"/><column index="6" value="71"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1*">-- Query 1
-- Get the id values of the first 5 clients from district_id with a value equals to 1.
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

--Query 2
-- In the client table, get an id value of the last client where the district_id equals to 72.

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

--Query 3
--Get the 3 lowest amounts in the loan table.

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

--Query 4
-- What are the possible values for status, ordered alphabetically in ascending order in the loan table?

SELECT DISTINCT status
FROM loan
ORDER BY status;

--Query 5
-- What is the loan_id of the highest payment received in the loan table?

SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

--Query 6
-- What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

SELECT amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

--Query 7
-- What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

--Query 8
--What are the unique values of k_symbol in the order table?
--Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.

SELECT DISTINCT k_symbol
FROM &quot;order&quot;
ORDER BY k_symbol;

--Query 9
--In the order table, what are the order_ids of the client with the account_id 34?

SELECT order_id
FROM &quot;order&quot;
WHERE account_id = 34;

--Query 10
--In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

SELECT DISTINCT account_id
FROM &quot;order&quot;
WHERE order_id &gt; 29540 AND order_id &lt;= 29560;

--Query 11
--In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

SELECT  amount
FROM &quot;order&quot;
WHERE account_to = 30067122;

--Query 12
--In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

SELECT trans_id, &quot;date&quot;, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

--Query 13
-- In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? 
--Show the results sorted by the district_id in ascending order.

SELECT COUNT (DISTINCT client_id)
FROM client
WHERE district_id &lt; 10
GROUP BY district_id
ORDER BY district_id ASC;

--Query 14
--In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.

SELECT type, COUNT (card_id)
FROM card
GROUP BY type
ORDER BY COUNT(card_id) DESC;

--Query 15
--Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.

SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

--Query 16
--In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.

SELECT date, COUNT (DISTINCT loan_id)
FROM loan
WHERE date &lt; 930907
GROUP BY date
ORDER BY date DESC;


-- Query 17
-- In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, 
-- ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.

SELECT
  date('19' || substr(date, 1, 2) || '-' || substr(date, 3, 2) || '-' || substr(date, 5, 2)) AS issue_date,
  duration,
  COUNT(loan_id) AS loan_count
FROM loan
WHERE issue_date &gt;= '1997-12-01'
  AND issue_date &lt; '1998-01-01'
GROUP BY issue_date, duration
ORDER BY issue_date ASC, duration ASC;



-- Query 18
--In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
-- Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.

SELECT account_id, type, SUM(amount) AS &quot;total_amount&quot;
FROM trans
WHERE account_id = 396
GROUP BY type
ORDER BY type ASC;

</sql><current_tab id="0"/></tab_sql></sqlb_project>
