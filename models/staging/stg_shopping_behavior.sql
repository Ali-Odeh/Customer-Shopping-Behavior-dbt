 
select
    customer_id,
    age,
    gender,
    item_purchased,
    category,
    purchase_amount_usd,
    location,
    size,
    color,
    season,
    review_rating,
    subscription_status,
    shipping_type,
    discount_applied,
    promo_code_used,
    previous_purchases,
    payment_method,
    frequency_of_purchases,
    {{ age_group('age') }} as age_group  
from {{ source('customer_shopping', 'SHOPPING_BEHAVIOR_UPDATED') }}
