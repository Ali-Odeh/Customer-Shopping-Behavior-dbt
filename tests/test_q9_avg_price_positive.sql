select *
from {{ ref('q9_full_insights') }}
where average_purchase_amount <= 0
