SELECT district_id, COUNT(*) 
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;
