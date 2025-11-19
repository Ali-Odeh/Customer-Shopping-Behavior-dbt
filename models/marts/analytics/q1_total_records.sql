
{{ config(materialized='table') }}

select count(*) as total_records

from {{ ref('stg_shopping_behavior') }}
