--G1
SELECT client_id FROM client WHERE district_id = 1 LIMIT 5;


--Q2
SELECT client_id FROM client WHERE district_id = 72 ORDER BY client_id DESC LIMIT 1;

--Q3
SELECT amount FROM loan order BY amount ASC LIMIT 3 ;

--Q4
سSELECT DISTINCT status FROM loan order BY status ASC;

--Q5
ببSELECT loan_id FROM loan order BY payments DESC LIMIT 1;

--Q6 
سثSELECT account_id , amount FROM loan order BY account_id  ASC LIMIT 5;

--Q7
SELECT account_id FROM loan WHERE duration = 60 order BY amount ASC LIMIT 5;

--Q8
SELECT DISTINCT k_symbol FROM 'order' order BY k_symbol ASC ;

--Q9
SELECT order_id FROM 'order' WHERE account_id - 34; 

--Q10 
SELECT DISTINCT account_id FROM 'order' WHERE order_id BETWEEN 29540 AND 29590 order BY account_id ASC ;
بقب
--Q11
SELECT amount FROM 'order' WHERE account_to = 30067122 ; 

--Q12
SELECT trans_id , date , type , amount FROM trans WHERE account_id =793 order BY date DESC LIMIT 10 ; 

--Q13 
--SELECT district_id , count(*) AS client_COUNT FROM client WHERE district_id <10 GROUP BY district_id GROUP BY district_id order BY district_id ASC;

--Q14 
SELECT type,count(*) AS card_count FROM card GROUP BY type order BY card_count DESC ;

--Q15
SELECT account_id , SUM(amount) AS total_loan_amount FROM loan GROUP BY account_id order BY total_loan_amount DESC LIMIT 10;

--Q16 
SELECT date , count(*) AS loan_count FROM loan WHERE date < 930907 GROUP BY date order BY date DESC ;

--Q17
SELECT date , duration , count(*) AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date , duration order BY date ASC , duration ASC;

--Q18 
SELECT account_id , type , SUM(amount) AS total_amount FROM trans WHERE account_id = 396 GROUP BY account_id , type order By type ASC ;
