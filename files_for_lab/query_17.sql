select date, duration, count(*) as number_loans from loan
where date >= 971201 and date <= 971231
group by date, duration
order by date asc, duration asc