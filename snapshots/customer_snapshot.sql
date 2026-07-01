{% snapshot customer_snapshot %}

{{
config(
    unique_key='customer_id'
    ,strategy='timestamp'
    ,updated_at='updated_at'    
)
}}

select customer_id,customer_name,city,updated_at
from {{ source('raw','raw_customers') }}

{% endsnapshot %}