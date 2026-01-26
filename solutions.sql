-- Query 1
SELECT client_id FROM client  where district_id==1 LIMIT 5;

-- Query 2
SELECT client_id FROM client WHERE district_id == 72 ORDER BY client_id DESC LIMIT 1 ;

-- Query 3
SELECT amount FROM loan ORDER BY amount ASC LIMIT 3;

-- Query 4
SELECT DISTINCT status FROM loan ORDER BY status ASC;

-- Query 5
SELECT loan_id FROM loan ORDER BY payments DESC LIMIT 1;

-- Query 6
SELECT account_id, amount FROM loan ORDER BY account_id ASC LIMIT 5;

-- Query 7
SELECT account_id  FROM loan WHERE duration==60 ORDER BY amount ASC LIMIT 5;

-- Query 8
SELECT DISTINCT k_symbol FROM "order" ORDER BY k_symbol ASC;

