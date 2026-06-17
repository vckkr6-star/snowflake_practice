{{config(materialized='incremental'
,incremental_strategy='delete+insert'
,unique_key='order_id'
)}}

select * from raw_orders

/*{{config(materialized='incremental'
,incremental_strategy='append'
)}}

select * from raw_orders

{{config(materialized='incremental'
,incremental_strategy='merge'
,unique_key='order_id'
)}}

select *
from raw_orders

{% if is_incremental() %}

where updated_date>
(
    select max(updated_date)
    from {{ this }}
)

{% endif %}*/








