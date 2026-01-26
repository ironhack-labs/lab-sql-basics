/* Query 10
In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?*/

select distinct account_id
from `order`
where order_id between  29540 AND 29560