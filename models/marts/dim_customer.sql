/*SELECT
customer_id,customer_name,gender,city,state
,customer_status
from {{ ref('stg_customer') }}*/

{{ config(materialized='table') }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    DOB,
    GENDER,
    MOBILE_NUMBER,
    EMAIL,
    CITY,
    STATE,
    CUSTOMER_STATUS,
    CURRENT_DATE AS START_DATE,
    TO_DATE('9999-12-31') AS END_DATE,
    'Y' AS CURRENT_FLAG,
    1 AS VERSION
FROM {{ ref('stg_customer') }}