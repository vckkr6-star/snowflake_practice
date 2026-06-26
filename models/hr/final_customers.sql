{{ config(materialized='view') }}

select 
customer_id,
customer_name,
country
from {{ ref('temp_customers') }}