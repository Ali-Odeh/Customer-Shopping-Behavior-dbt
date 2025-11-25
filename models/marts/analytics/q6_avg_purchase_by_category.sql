select
    category,
    round(avg(purchase_amount_usd), 2) as avg_purchase_amount
from {{ ref('stg_shopping_behavior') }}
group by category
order by avg_purchase_amount desc

 
