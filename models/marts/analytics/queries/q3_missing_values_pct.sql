 
select
    {{ null_percentage('customer_id') }}               as pct_missing_customer_id,
    {{ null_percentage('age') }}                       as pct_missing_age,
    {{ null_percentage('gender') }}                    as pct_missing_gender,
    {{ null_percentage('item_purchased') }}            as pct_missing_item_purchased,
    {{ null_percentage('category') }}                  as pct_missing_category,
    {{ null_percentage('purchase_amount_usd') }}       as pct_missing_purchase_amount_usd,
    {{ null_percentage('location') }}                  as pct_missing_location,
    {{ null_percentage('size') }}                      as pct_missing_size,
    {{ null_percentage('color') }}                     as pct_missing_color,
    {{ null_percentage('season') }}                    as pct_missing_season,
    {{ null_percentage('review_rating') }}             as pct_missing_review_rating,
    {{ null_percentage('subscription_status') }}       as pct_missing_subscription_status,
    {{ null_percentage('shipping_type') }}             as pct_missing_shipping_type,
    {{ null_percentage('discount_applied') }}          as pct_missing_discount_applied,
    {{ null_percentage('promo_code_used') }}           as pct_missing_promo_code_used,
    {{ null_percentage('previous_purchases') }}        as pct_missing_previous_purchases,
    {{ null_percentage('payment_method') }}            as pct_missing_payment_method,
    {{ null_percentage('frequency_of_purchases') }}    as pct_missing_frequency_of_purchases
from {{ ref('stg_shopping_behavior') }}
