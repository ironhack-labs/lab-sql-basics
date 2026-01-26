/* Query 18
In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). 
Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type. */

select account_id, type, sum(amount) as total_amount
from trans
where account_id = 396
group by 1,2
order by 2