select *
from {{ source('raw','raw_orders_2') }}