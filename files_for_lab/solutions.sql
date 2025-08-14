<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="lab1_bank.sqlite" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2772"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="account" custom_title="0" dock_id="1" table="4,7:mainaccount"/><dock_state state="000000ff00000000fd00000001000000020000000000000000fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000ffffffff0000011800ffffff000000000000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings/></tab_browse><tab_sql><sql name="SQL 1*">-- Query '1'
/*
SELECT client_id from client where district_id = 1 LIMIT 5
*/

-- Query '2'
/*
SELECT client_id from client where district_id = 72 ORDER BY client_id DESC LIMIT 1
*/

-- Query '3'
/*
SELECT amount from loan ORDER BY amount ASC LIMIT 3
*/

-- Query '4'
/*
SELECT DISTINCT status from loan ORDER BY status ASC
*/

-- Query '5'
/*
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1
*/

-- Query '6'
/*
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5
*/

-- Query '7'
/*
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5
*/

-- Query '8'
/*
SELECT DISTINCT k_symbol FROM order
*/

-- Query '9'
/*
SELECT order_id from 'order' where account_id == 34
*/

-- Query '10'
/*
SELECT account_id FROM order WHERE order_id BETWEEN 29540 AND 29560;
*/

-- Query '11'
/*
SELECT amount FROM order WHERE account_to = 30067122;
*/

-- Query '12'
/*
SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10
*/

-- Query '13'
/*
SELECT district_id, COUNT(*) AS client_count FROM client WHERE district_id &lt; 10 GROUP BY district_id
ORDER BY district_id ASC
*/

-- Query '14'
/*
SELECT type, COUNT(*) AS card_count FROM card GROUP BY type ORDER BY card_count DESC;
*/

-- Query '15'
/*
SELECT account_id, sum(amount) as total_loan_amount from loan GROUP by account_id order by total_loan_amount DESC LIMIT 10
 */
 
 -- Query '16'
 /*
SELECT date, COUNT(*) AS loan_count FROM loan WHERE date &lt; 930907 GROUP BY date ORDER BY date DESC;
*/

 -- Query '17'
 /*
SELECT date, duration, COUNT(*) AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration ORDER BY date ASC, duration ASC;
*/

 -- Query '18'
 /*
SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396
GROUP BY account_id, type ORDER BY type ASC;
*/</sql><current_tab id="0"/></tab_sql></sqlb_project>
