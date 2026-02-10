SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;
