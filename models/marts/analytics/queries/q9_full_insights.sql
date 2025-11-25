-- 9- Write one SQL query that returns, for each combination of (Age Group, Gender, Category, and Season):
-- the total number of purchases, the total purchase amount, 
-- the average purchase amount, the most frequently purchased item, and the most common size and color chosen — all in one result set.

SELECT 
    gender,
    category,
    season,
   -- age_group , 
    {{ age_group('age') }} AS age_group,

    count(*) as number_of_purchases,
    sum(purchase_amount_usd) as total_purchase_amount,
    round( avg(purchase_amount_usd),2 )as average_purchase_amount,

    mode(item_purchased) as most_frequent_item,
    mode(size) as most_common_size,
    mode(color) as most_common_color

   from {{ source('customer_shopping', 'SHOPPING_BEHAVIOR_UPDATED') }}
-- from {{ ref('stg_shopping_behavior') }}

group by 
    age_group,
    gender,
    category,
    season
    
order by total_purchase_amount desc
