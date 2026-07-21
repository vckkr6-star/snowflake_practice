SELECT
o.ORDER_ID,
o.ORDER_DATE,
c.CUSTOMER_ID,
c.CUSTOMER_NAME,
c.CITY,
c.STATE

FROM {{ ref('stg_orders_retail') }} o

INNER JOIN {{ ref('stg_customers_retail') }} c

ON o.CUSTOMER_ID = c.CUSTOMER_ID