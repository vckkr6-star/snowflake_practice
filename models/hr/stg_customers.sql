{{ config(
    materialized='view'
    ) }}

select customer_id,
upper(customer_name) as customer_name,
country
from raw_customers