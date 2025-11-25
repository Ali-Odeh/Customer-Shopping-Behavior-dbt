     select location,
        count(distinct customer_id) as unique_customers
    from {{ ref('stg_shopping_behavior') }}
    group by location

    order by unique_customers desc
 -- qualify row_number() over (order by unique_customers desc) = 1

