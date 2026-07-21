{% snapshot customer_snapshot_b %}

{{
config(
target_schema='SNAPSHOTS',
unique_key='CUSTOMER_ID',
strategy='check',
check_cols=['CITY','CUSTOMER_STATUS']
)
}}

SELECT *

FROM {{ ref('stg_customer') }}

{% endsnapshot %}