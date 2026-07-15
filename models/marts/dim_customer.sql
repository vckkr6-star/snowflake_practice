SELECT
customer_id,customer_name,gender,city,state
,customer_status
from {{ ref('stg_customer') }}