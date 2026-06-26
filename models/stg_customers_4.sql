select customer_id,
customer_name,
email,
age
from {{ ref('customers') }}