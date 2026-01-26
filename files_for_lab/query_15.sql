/*Query 15
Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts. */

select account_id, sum(amount) as sums
from loan
group by 1
order by 2 desc
limit 10