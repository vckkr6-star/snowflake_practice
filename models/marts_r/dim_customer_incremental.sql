{{ config(
    materialized='incremental',
    unique_key='customer_id'
 ) }}
 SELECT
CUSTOMER_ID,
CUSTOMER_NAME,
CITY,
STATE,
COUNTRY,
CREATED_DATE
FROM {{ ref('stg_customers_retail') }}

{% if is_incremental() %}

WHERE CREATED_DATE >

(
SELECT MAX(CREATED_DATE)

FROM {{ this }}
)

{% endif %}