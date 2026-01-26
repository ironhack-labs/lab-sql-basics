/* Query 17
In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order.
You can ignore days without any loans in your output.

*/

select date, duration,  count(loan_id)
from loan
where date between 971201 and 971231
group by 1,2