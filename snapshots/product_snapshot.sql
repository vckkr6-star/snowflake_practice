{% snapshot product_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='product_id',
        strategy='check',

        check_cols=[
            'product_name',
            'price'
        ]
    )
}}

select *
from {{ source('raw','raw_products') }}

{% endsnapshot %}