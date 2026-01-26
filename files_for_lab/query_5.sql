/*Query 5 
What is the loan_id of the highest payment received in the loan table? */

SELECT loan_id
from loan
order by payments DESC
limit 1;