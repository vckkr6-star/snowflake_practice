SELECT

LOAN_ID,

CUSTOMER_ID,

LOAN_TYPE,

LOAN_AMOUNT,

LOAN_STATUS

FROM {{ ref('stg_loan') }}