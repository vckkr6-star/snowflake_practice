select order_id,
customer_id,
customer_name,
amount
from {{ source('raw','raw_orders_2') }}