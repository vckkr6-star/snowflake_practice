select customer_id,
customer_name,
upper(country) as country
from {{ source('raw','raw_customers') }}