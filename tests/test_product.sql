select *
from {{ ref('stg_products') }}
where product_id is null