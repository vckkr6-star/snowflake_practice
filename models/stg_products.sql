select 
product_id,
product_name,
price
from {{ source('raw','products') }}