/* Query 12
In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.*/

select trans_id, date, type, amount
from trans
where account_id = 793
order by date DESC
limit 10