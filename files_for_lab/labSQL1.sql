--Quray1
/* SELECT client_id FROM client WHERE district_id = 1 LIMIT 5; */
--Quray2
/* SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1; */
--Quray3
/* SELECT amount FROM loan ORDER BY amount ASC LIMIT 3; */
--Quray4
/* SELECT DISTINCT status FROM loan ORDER BY status ASC; */
--Quray5
/* SELECT loan_id FROM loan ORDER BY amount DESC LIMIT 1; */
--Quray6
/* SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5; */
--Quray7
/* SELECT account_id FROM loan WHERE duration = 60 ORDER BY amount ASC LIMIT 5; */
--Quray8
/* SELECT DISTINCT k_symbol FROM `order`; */
--Query9
/* SELECT order_id FROM `order` WHERE account_id = 34;*/
--Query10
/* SELECT DISTINCT account_id FROM `order` WHERE order_id BETWEEN 29540 AND 29560; */
--Query11
/* SELECT amount FROM `order` WHERE account_to = 30067122; */
--Query12
/* SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 ORDER BY date DESC LIMIT 10; */
--Query13
/* SELECT district_id, COUNT(*) AS client_count FROM client WHERE district_id < 10 GROUP BY district_id
ORDER BY district_id ASC; */
--Query14
/* SELECT type, COUNT(*) AS card_count FROM card GROUP BY type ORDER BY card_count DESC; */
--Query15
/* SELECT account_id, SUM(amount) AS total_loan_amount FROM loan GROUP BY account_id ORDER BY total_loan_amount DESC
LIMIT 10; */
--Query16
/* SELECT date, COUNT(*) AS loan_count FROM loan WHERE date < 930907 GROUP BY date ORDER BY date DESC; */
--Query17
/* SELECT date, duration, COUNT(*) AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration ORDER BY date ASC, duration ASC; */
--Query18
/* SELECT account_id, type, SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY type
ORDER BY type ASC; */