select age_group, 
count(*) as total_purchases
from {{ ref('stg_shopping_behavior') }}
group by age_group
order by total_purchases desc
