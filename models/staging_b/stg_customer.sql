/*select *
from {{ source('raw','customer') }}*/

--customer name should alwys be upper case

SELECT

CUSTOMER_ID,

UPPER(CUSTOMER_NAME) AS CUSTOMER_NAME,

DOB,

GENDER,

MOBILE_NUMBER,

EMAIL,

CITY,

STATE,

CUSTOMER_STATUS,

CREATED_DATE,

UPDATED_DATE

FROM {{ source('raw','customer') }}