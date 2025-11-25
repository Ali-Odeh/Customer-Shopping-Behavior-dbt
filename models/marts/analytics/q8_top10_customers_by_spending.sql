select 
    customer_id,
    sum(purchase_amount_usd) as total_spending
from {{ ref('stg_shopping_behavior') }}
group by customer_id
qualify row_number() over (order by sum(purchase_amount_usd) desc) <= 10
