{{config(materialized='incremental')}}

select *
from raw_orders

{% if is_incremental() %}

where updated_date>
(
    select max(updated_date)
    from {{ this }}
)

{% endif %}