<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="solutions.sql" readonly="0" foreign_keys="0" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2772"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="trans" custom_title="0" dock_id="1" table="4,5:maintrans"/><dock_state state="000000ff00000000fd0000000100000002000004aa000002e6fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000000004aa0000013900ffffff000004aa0000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="account" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="69"/><column index="2" value="65"/><column index="3" value="148"/><column index="4" value="54"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="card" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="50"/><column index="2" value="49"/><column index="3" value="62"/><column index="4" value="124"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="client" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="56"/><column index="2" value="85"/><column index="3" value="65"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="district" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="29"/><column index="2" value="156"/><column index="3" value="124"/><column index="4" value="62"/><column index="5" value="31"/><column index="6" value="29"/><column index="7" value="29"/><column index="8" value="29"/><column index="9" value="29"/><column index="10" value="46"/><column index="11" value="46"/><column index="12" value="39"/><column index="13" value="39"/><column index="14" value="31"/><column index="15" value="46"/><column index="16" value="46"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="loan" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="49"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="54"/><column index="5" value="55"/><column index="6" value="63"/><column index="7" value="43"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="order" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="55"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="70"/><column index="5" value="62"/><column index="6" value="70"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="trans" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort/><column_widths><column index="1" value="62"/><column index="2" value="69"/><column index="3" value="54"/><column index="4" value="54"/><column index="5" value="117"/><column index="6" value="62"/><column index="7" value="70"/><column index="8" value="62"/><column index="9" value="36"/><column index="10" value="70"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">SELECT client_id FROM client WHERE district_id = 1 ORDER BY client_id ASC LIMIT 5;

SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

SELECT DISTINCT status FROM loan ORDER BY status ASC;

SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5;

SELECT DISTINCT k_symbol FROM `order` ORDER BY k_symbol ASC;

SELECT order_id, account_id FROM `order` WHERE account_id = 34;

SELECT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560;

SELECT amount FROM `order` WHERE account_to = 30067122;

SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10;

SELECT district_id, COUNT(*) FROM client WHERE district_id &lt; 10 GROUP BY district_id ORDER BY district_id ASC;

SELECT type, COUNT(*) FROM card GROUP BY type ORDER BY COUNT(*) DESC;

SELECT account_id, SUM(amount) FROM loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

SELECT date, count (*) FROM loan WHERE date &lt; 930907 GROUP BY date ORDER BY date DESC;

SELECT date, duration, COUNT(*) FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;

SELECT account_id, type, SUM(amount) total_amount FROM trans WHERE account_id = 396 GROUP BY account_id, type ORDER BY type ASC;
</sql><current_tab id="0"/></tab_sql></sqlb_project>
