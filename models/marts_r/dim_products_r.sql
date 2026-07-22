select
row_number() over(order by product_id) as product_key,
product_id,product_name,category,
brand,price,cost
from {{ ref('stg_products_retail') }}
