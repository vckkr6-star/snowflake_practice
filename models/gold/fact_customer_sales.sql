select
customer_id,
customer_name,
sum(amount) as total_sales
from {{ ref('stg_orders_1') }}
group by customer_id,
customer_name