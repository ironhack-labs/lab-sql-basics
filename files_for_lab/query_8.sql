/* Query 8
What are the unique values of k_symbol in the order table?

Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.*/

select distinct k_symbol
from `order`