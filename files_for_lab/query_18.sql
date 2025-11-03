select account_id, type, sum(amount), count(*) as total_amount from trans where account_id=396
GROUP by account_id, type
order by type ASC
