select *
from {{ source('raw','raw_customers_2') }}