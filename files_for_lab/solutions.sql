<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="lab1_bank.sqlite" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2772"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="loan" custom_title="0" dock_id="1" table="4,4:mainloan"/><dock_state state="000000ff00000000fd00000001000000020000024900000213fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000000002490000011900ffffff000002490000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="account" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort><column index="1" mode="0"/></sort><column_widths><column index="1" value="311"/><column index="2" value="223"/><column index="3" value="298"/><column index="4" value="352"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="card" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="50"/><column index="2" value="49"/><column index="3" value="62"/><column index="4" value="124"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="client" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort><column index="2" mode="0"/></sort><column_widths><column index="1" value="56"/><column index="2" value="85"/><column index="3" value="65"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="loan" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort><column index="3" mode="0"/></sort><column_widths><column index="1" value="49"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="54"/><column index="5" value="55"/><column index="6" value="63"/><column index="7" value="43"/></column_widths><filter_values><column index="2" value="971206"/></filter_values><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="order" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="55"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="70"/><column index="5" value="62"/><column index="6" value="70"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="trans" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort><column index="1" mode="0"/></sort><column_widths><column index="1" value="62"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="54"/><column index="5" value="117"/><column index="6" value="62"/><column index="7" value="70"/><column index="8" value="62"/><column index="9" value="36"/><column index="10" value="70"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">/*Query 1*/
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;
/*Query 2*/
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;
/*Query 3*/
SELECT amount FROM loan ORDER BY amount LIMIT 3;
/*Query 4*/
SELECT DISTINCT status FROM loan ORDER BY status ;
/*Query 5*/
SELECT loan_id FROM loan  ORDER BY payments DESC LIMIT 1;
SELECT loan_id FROM loan WHERE payments = (SELECT  max(payments) FROM loan);
/*Query 6*/
SELECT account_id, amount FROM loan ORDER BY account_id LIMIT 5;
/*Query 7*/
SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount LIMIT 5;
/*Query 8*/
SELECT DISTINCT k_symbol FROM `order` order by k_symbol;
/*Query 9*/
SELECT order_id FROM `order` WHERE account_id = 34;
/*Query 10*/
SELECT DISTINCT account_id FROM `order` WHERE order_id  BETWEEN  29540 and 29560;
/*Query 11*/
SELECT DISTINCT amount  FROM `order` WHERE account_to = 30067122;
/*Query 12*/
SELECT trans_id,date,type,amount FROM trans  WHERE account_id =793 ORDER BY date DESC LIMIT 10;
/*Query 13*/ 
SELECT count(client_id) FROM client WHERE district_id &lt; 10  GROUP BY district_id ; 
/*Query 14*/
SELECT type,count(card_id) AS CARDS FROM card  GROUP BY type;
/*Query 15*/
SELECT account_id, sum(amount) FROM loan GROUP BY account_id order by sum(amount) DESC limit 10;
/*Query 16*/
select date, count(loan_id) FROM loan where date &lt; 930907  group by date order by date desc; 
/*Query 17*/
select date,duration, count(loan_id) FROM loan where date between 971201 and 971231 group by date,duration order by date,duration asc;
/*Query 18*/
select account_id, type, sum(amount) FROM trans where account_id = 396 group by type;</sql><current_tab id="0"/></tab_sql></sqlb_project>
