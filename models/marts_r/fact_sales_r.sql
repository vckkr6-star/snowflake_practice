SELECT
o.ORDER_ID,
dc.CUSTOMER_KEY,
dp.PRODUCT_KEY,
d.DATE_KEY,
o.QUANTITY,
o.UNIT_PRICE,
o.DISCOUNT,
o.GROSS_AMOUNT,
o.NET_SALES,
o.TOT_COST,
o.PROFIT

FROM {{ ref('int_sales_r') }} o

JOIN {{ ref('dim_customer_r') }} dc

ON o.CUSTOMER_ID = dc.CUSTOMER_ID

JOIN {{ ref('dim_products_r') }} dp

ON o.PRODUCT_ID = dp.PRODUCT_ID

JOIN {{ ref('dim_date_r') }} d
ON o.ORDER_DATE = d.DATE