select
row_number() over(order by customer_id) as customer_key,
customer_id,customer_name,city,state,country
from {{ ref('stg_customers_retail') }}

