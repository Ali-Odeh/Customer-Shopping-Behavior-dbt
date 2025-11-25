
select *
from {{ ref('q9_full_insights') }}
where total_purchase_amount <= 0
