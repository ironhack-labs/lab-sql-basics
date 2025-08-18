<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="solution.sql" readonly="0" foreign_keys="0" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2772"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="5" parent="0"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="account" custom_title="0" dock_id="3" table="4,7:mainaccount"/><dock_state state="000000ff00000000fd0000000100000002000002290000020bfc0100000003fb000000160064006f0063006b00420072006f00770073006500310100000000000002480000000000000000fb000000160064006f0063006b00420072006f00770073006500320100000000000002480000000000000000fb000000160064006f0063006b00420072006f00770073006500330100000000000002290000012d00ffffff000002290000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="account" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="69"/><column index="2" value="65"/><column index="3" value="148"/><column index="4" value="54"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="loan" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="49"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="54"/><column index="5" value="55"/><column index="6" value="63"/><column index="7" value="43"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="order" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="55"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="70"/><column index="5" value="62"/><column index="6" value="70"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1*">PRAGMA table_info(district);

-- Query 1 -- 

SELECT client_id

FROM client

WHERE district_id = 1

LIMIT 5;



-- Query 2 -- 

SELECT client_id FROM client

WHERE district_id = 72

ORDER BY client_id DESC

LIMIT 1;



-- Query 3 -- 

SELECT amount FROM loan

ORDER BY AMOUNT ASC

LIMIT 3;



-- Query 4 -- 

SELECT DISTINCT status FROM loan

ORDER BY status ASC

LIMIT 4;



-- Query 5 -- 

SELECT loan_id

FROM loan

ORDER BY payments DESC

LIMIT 1;



-- Query 6 -- 

SELECT account_id, amount

FROM loan

ORDER BY account_id ASC

LIMIT 5;





-- Query 7 -- 

SELECT account_id

FROM loan

WHERE duration = 60 

ORDER BY AMOUNT ASC;



-- Query 8 -- 

ALTER TABLE &quot;order_db&quot; RENAME TO order;

SELECT DISTINCT k_symbol

FROM order_db;   





-- Query 9 -- 

SELECT order_id, account_id

FROM order_db

WHERE account_id LIKE 34;



-- Query 10 -- 

SELECT account_id

FROM order_db

WHERE order_id &gt; 29540 AND order_id &lt; 29560;



-- Query 11 -- 

SELECT amount

FROM order_db

WHERE account_id = 30067122;



-- Query 12 -- 

SELECT trans_id, date, type, amount

FROM trans

WHERE account_id = 793

ORDER BY date DESC

LIMIT 10;



-- Query 13 -- 

SELECT DISTINCT district_id

FROM client

WHERE district_id IS NOT NULL AND district_id &lt; 10

ORDER BY district_id ASC;



-- Query 14 --

SELECT DISTINCT type, card_id

FROM card

GROUP BY type

ORDER BY card_id DESC;



-- Query 15 --

SELECT account_id, sum(amount)

FROM loan

GROUP BY amount

ORDER BY AMOUNT DESC

LIMIT 10;



 -- Query 16 --

SELECT date, COUNT(*) AS loan_count

FROM loan

WHERE date &lt; 930907

GROUP BY date

ORDER BY date DESC;



 

-- Query 17 --

SELECT date, duration, COUNT(*) AS loan_count

FROM loan

WHERE date BETWEEN 971201 AND 971231

GROUP BY date, duration

ORDER BY date ASC, duration ASC;



-- Query 18 -- 

SELECT account_id, type, SUM(amount) AS total_amount

FROM trans

WHERE account_id = 396

GROUP BY account_id, type

ORDER BY type ASC;





</sql><current_tab id="0"/></tab_sql></sqlb_project>
