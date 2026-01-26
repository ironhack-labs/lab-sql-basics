/* Query 6
What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount */

SELECT account_id, amount
from loan
order by account_id
limit 5
