-- Query 1:
SELECT client_id from client where district_id == 1 ORDER BY client_id ASC LIMIT 5;

-- Query 2:
SELECT client_id from client where district_id == 72 ORDER BY client_id DESC LIMIT 1;

-- Query 3:
SELECT amount from loan ORDER BY amount ASC LIMIT 3;

-- Query 4:
SELECT DISTINCT status from loan ORDER BY status ASC;

-- Query 5:
SELECT loan_id from loan ORDER BY payments DESC LIMIT 1;

-- Query 6:
SELECT account_id, amount from loan ORDER BY account_id ASC LIMIT 5;

-- Query 7:
SELECT account_id from loan WHERE duration == 60 ORDER BY amount ASC LIMIT 5;

-- Query 8:
SELECT DISTINCT k_symbol from "order" WHERE k_symbol <> " " ORDER BY k_symbol ASC;

-- Query 9:
SELECT order_id from "order" WHERE account_id == 34 ORDER BY order_id ASC;

-- Query 10:
SELECT DISTINCT account_id from "order" WHERE order_id BETWEEN 29540 AND 29560 ORDER BY account_id ASC;

-- Query 11:
SELECT amount from "order" where account_to == "30067122";

-- Query 12:
SELECT trans_id, "date", type, amount from trans where account_id == 793 ORDER BY "date" DESC LIMIT 10;

-- Query 13:
SELECT COUNT(*) from client where district_id < 10 GROUP BY district_id ORDER BY district_id ASC;

-- Query 14:
SELECT type, COUNT(*) from card GROUP BY type ORDER BY COUNT(*) DESC;

-- Query 15:
SELECT account_id, SUM(amount) from loan GROUP BY account_id ORDER BY SUM(amount) DESC LIMIT 10;

-- Query 16:
SELECT "date", COUNT(*) from loan where "date" < 930907 GROUP BY "date" ORDER BY "date" DESC;

-- Query 17:
SELECT "date", duration, COUNT(*) from loan where "date" BETWEEN 971201 AND 971231 GROUP BY "date", duration ORDER BY "date", duration ASC;

-- Query 18:
SELECT account_id, type, SUM(amount) AS "total_amount" from trans where account_id == 396 GROUP BY type ORDER BY type ASC;