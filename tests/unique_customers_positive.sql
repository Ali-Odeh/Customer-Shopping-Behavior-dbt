select *
from {{ ref('q5_unique_customers_by_location') }}
where unique_customers <= 0
