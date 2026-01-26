/*Query 7
What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table? */

SELECT account_id, amount
FROM loan
where 1 = 1
and duration = 60
order by amount
limit 5