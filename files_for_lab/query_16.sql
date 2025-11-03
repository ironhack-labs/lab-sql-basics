SELECT date,count(*) as number_of_loans from loan 
WHERE 
    date < 930907
GROUP BY 
    date
ORDER BY 
    date DESC;
