-- query 1
SELECT 
	c.'client_id'
FROM 
	client as c
WHERE 
	c.'district_id' = 1
LIMIT
	5
;

-- query 2
SELECT 
	c.'client_id' as id
FROM 
	client as c
WHERE 
	c.'district_id' = 72
ORDER BY
	id DESC
LIMIT
	1
;

-- query 3
SELECT 
	l.'amount' as val
FROM 
	loan as l
ORDER BY
	val ASC
LIMIT
	3
;

-- query 4
SELECT DISTINCT
	l.'status' as status
FROM 
	loan as l
ORDER BY
	status ASC
;

-- query 5
SELECT l.'loan_id'
FROM loan as l
WHERE l.'payments' = (
	SELECT MAX(loan.'payments')
	FROM loan
);

-- query 6
SELECT l.'account_id' as "account_id", l.'amount'
FROM loan as l
GROUP BY "account_id"
LIMIT 5
;

-- query 7
SELECT l.'account_id'
FROM loan as l
WHERE l.'duration' = 60
ORDER BY l.'amount' ASC
;

-- query 8
SELECT DISTINCT 
	o.'k_symbol' as SYMBOL
FROM 
	'order' as o
ORDER BY 
	SYMBOL ASC
;

-- query 9
SELECT 
	o.'order_id'
FROM 
	'order' as o
WHERE
	o.'account_id' = 34
;

-- query 10
SELECT DISTINCT
	o.'account_id'
FROM 
	'order' as o
WHERE
	o.'order_id' >= 29540 AND
	o.'order_id' <= 29560	
;

-- query 11
SELECT DISTINCT
	o.'amount'
FROM 
	'order' as o
WHERE
	o.'account_to' = 30067122 
;

-- query 12
SELECT
	t.'trans_id', t.'date', t.'type', t.'amount'
FROM 
	'trans' as t
WHERE
	t.'account_id' = 793
ORDER BY 
	t.'date' DESC
LIMIT 10	
;

-- query 13
SELECT
	COUNT(*)
FROM 
	'client' as c
WHERE
	c.'district_id' < 10
GROUP BY 
	c.'district_id'
ORDER BY
	c.'district_id' ASC	
;

-- query 14
SELECT
	c.'type', COUNT(*) as VAL
FROM 
	'card' as c
GROUP BY 
	c.'type'
ORDER BY
	VAL DESC	
;

-- query 15
SELECT
	l.'account_id', l.'amount' as VAL
FROM 
	'loan' as l
ORDER BY 
	VAL DESC
LIMIT 10
;

-- query 16
SELECT
	l.'date', COUNT(*)
FROM 
	'loan' as l
WHERE
	l.'date' < 930907
GROUP BY
	l.'date'
ORDER BY 
	l.'date' DESC
;

-- query 17
SELECT
	l.'date', l.'duration', COUNT(*) as 'val'
FROM 
	'loan' as l
WHERE
	substr(l.'date', 1, 2) = '97' AND 
	substr(l.'date', 3, 2) = '12'
GROUP BY
	l.'date', l.'duration'
ORDER BY 
	l.'date' ASC,
	l.'duration' ASC
;


-- query 18
SELECT
	t.'account_id', t.'type', SUM(t.'amount') as 'val'
FROM 
	'trans' as t
WHERE
	t.'account_id' = 396
GROUP BY
	t.'type'
ORDER BY 
	t.'type' ASC
;