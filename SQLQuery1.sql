with cte as (
select * from bike_share_yr_0
union 
select * from bike_share_yr_1
)

select dteday,season,c.yr,hr,weekday,riders,rider_type,price,COGS,CAST(riders AS real)  * price as revenue,
CAST(riders AS real) * price - CAST(riders AS real) *COGS as proftis
from cte c 
left join cost_table t
on c.yr=t.yr


