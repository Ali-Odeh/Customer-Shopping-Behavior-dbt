
select season , 
count(*) as total_purchases,
sum (purchase_amount_usd) as total_revenue

from {{ ref('stg_shopping_behavior') }}

group by season
order by 2 desc
