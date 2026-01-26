/*Query 14
In the card table, how many cards exist for each type? Rank the result starting with the most frequent type. */

select type, count(card_id) as cards
from card
group by 1
order by 2 desc