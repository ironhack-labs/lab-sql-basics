-- 1
SELECT client_id FROM client WHERE district_id == 1 order by client_id LIMIT 5;

-- 2
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id desc limit 1;

-- 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- 4
SELECT DISTINCT(status) FROM loan ORDER BY status ASC;

-- 5
SELECT loan_id from loan order by payments DESC LIMIT 1;

-- 6
SELECT account_id AS "#id", amount FROM loan order by account_id asc LIMIT 5;

-- 7
SELECT account_id, amount FROM loan WHERE duration == 60 order by amount asc LIMIT 5;

-- 8
SELECT DISTINCT(k_symbol) FROM 'order';

-- 9
SELECT order_id FROM 'order' WHERE account_id == 34;

-- 10
SELECT DISTINCT(account_id) FROM 'order' WHERE order_id BETWEEN 29540 AND 29560;

-- 11
SELECT amount FROM 'order' WHERE account_to == 30067122;

-- 12
SELECT trans_id, date, type ,amount FROM trans WHERE account_id == 793 order by date DESC LIMIT 10;

-- 13
SELECT district_id,count(*) FROM client WHERE district_id < 10 GROUP BY district_id;

-- 14
SELECT type, count(*) as countt FROM card GROUP BY type order by countt DESC;

-- 15
SELECT account_id, SUM(amount) as asn FROM loan GROUP BY account_id order by asn DESC LIMIT 10;

-- 16
SELECT date, COUNT(*) FROM loan WHERE date < 930907 GROUP By date order by date desc;

-- 17
SELECT date, duration, count(*) FROM loan WHERE date BETWEEN 971200 AND 971231  GROUP BY date,duration;

-- 18
SELECT account_id,type, SUM(amount) FROM trans WHERE account_id == 396 GROUP By type
