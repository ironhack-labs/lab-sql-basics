/*Query 16
In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order. */

select date, count(loan_id)
from loan
WHERE date < 930907
group by 1
order by 1 DESC