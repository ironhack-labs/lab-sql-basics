/* Query 2
In the client table, get an id value of the last client where the district_id equals to 72. */

SELECT max(client_id)
FROM client
where district_id = 72