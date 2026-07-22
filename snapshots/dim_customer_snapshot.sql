{% snapshot customer_snapshot %}

{{
    config(
        target_database='RETAIL_DB',
        target_schema='GOLD',
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=['CITY','STATE']
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY,
    STATE,
    COUNTRY,
    CREATED_DATE
FROM {{ ref('stg_customers_retail') }}

{% endsnapshot %}