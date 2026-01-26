/*Query 11
In the order table, what are the individual amounts that were sent to (account_to) id 30067122? */

select amount
from `order`
where account_to = 30067122