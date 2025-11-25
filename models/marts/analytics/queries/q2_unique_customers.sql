 
select count(distinct customer_id) as unique_customers
from {{ ref('stg_shopping_behavior') }}
