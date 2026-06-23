select
customer_id,
customer_name
from {{ source('raw','raw_customers_1') }}