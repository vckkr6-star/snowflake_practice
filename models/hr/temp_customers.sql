{{config(materialized='ephemeral')}}

select
customer_id,
customer_name,
country
from raw_customers