USE bank;
SELECT client_id FROM client
WHERE district_id=1
LIMIT 5
;
SELECT client_id FROM client
WHERE district_id=72
ORDER BY client_id DESC
LIMIT 1
;

SELECT amount FROM loan
ORDER BY amount
LIMIT 3
;

SELECT DISTINCT status FROM loan
ORDER BY status
;

SELECT loan_id FROM loan
ORDER BY payments
LIMIT 1
;

SELECT account_id, amount FROM loan
ORDER BY account_id
LIMIT 5
;
SELECT account_id FROM loan
WHERE duration=60
ORDER BY amount
LIMIT 5
;

SELECT DISTINCT k_symbol FROM  `order`;

SELECT order_id FROM  `order`
WHERE account_id=34
;

SELECT DISTINCT account_id FROM  `order`
WHERE order_id>=29540 and order_id<=29560
;
SELECT DISTINCT amount FROM  `order`
WHERE account_to=30067122
;

SELECT trans_id, date, type, amount FROM trans
WHERE account_id=793
ORDER BY date 
LIMIT 10;

SELECT district_id, COUNT(*) AS client_count
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

SELECT type, COUNT(*) AS card_count
FROM card
GROUP BY type
ORDER BY card_count DESC;

SELECT account_id, SUM(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

SELECT date , COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

SELECT date AS loan_date, duration, COUNT(*) AS loan_count
FROM loan
WHERE YEAR(date) = 1997 AND MONTH(date) = 12
GROUP BY loan_date, duration
HAVING loan_count > 0
ORDER BY loan_date ASC, duration ASC;

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396 AND (type = 'VYDAJ' OR type = 'PRIJEM')
GROUP BY account_id, type
ORDER BY type ASC;

SELECT account_id, 
    CASE
        WHEN type = 'VYDAJ' THEN 'Outgoing'
        WHEN type = 'PRIJEM' THEN 'Incoming'
        ELSE type
    END AS transaction_type,
    FLOOR(SUM(amount)) AS total_amount
FROM trans
WHERE account_id = 396 AND (type = 'VYDAJ' OR type = 'PRIJEM')
GROUP BY account_id, transaction_type
ORDER BY transaction_type ASC;

SELECT account_id,
    SUM(CASE WHEN type = 'PRIJEM' THEN amount ELSE 0 END) AS incoming_amount,
    SUM(CASE WHEN type = 'VYDAJ' THEN amount ELSE 0 END) AS outgoing_amount,
    SUM(CASE WHEN type = 'PRIJEM' THEN amount ELSE -amount END) AS difference
FROM trans
WHERE account_id = 396 AND (type = 'VYDAJ' OR type = 'PRIJEM');

SELECT account_id, difference
FROM (
    SELECT account_id, 
        SUM(CASE WHEN type = 'PRIJEM' THEN amount ELSE -amount END) AS difference
    FROM trans
    WHERE type IN ('VYDAJ', 'PRIJEM')
    GROUP BY account_id
) AS subquery
ORDER BY difference DESC
LIMIT 10;


