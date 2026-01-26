/* Query 13
In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.*/

select district_id, count(client_id) as clients
from client
where district_id < 10
group by 1