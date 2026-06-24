select distinct
customer_id,
initcap(customer_name) as customer_name
,amount
from {{ ref('bronze_orders') }}
where customer_id is not null