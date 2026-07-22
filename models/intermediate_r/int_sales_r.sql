WITH sales_calc AS (

SELECT

    o.ORDER_ID,
    o.ORDER_DATE,
    o.CUSTOMER_ID,
    oi.PRODUCT_ID,

    c.CUSTOMER_NAME,
    p.PRODUCT_NAME,
    p.CATEGORY,

    oi.QUANTITY,
    oi.UNIT_PRICE,
    oi.DISCOUNT,

    oi.QUANTITY * oi.UNIT_PRICE AS GROSS_AMOUNT,

    (oi.QUANTITY * oi.UNIT_PRICE) - oi.DISCOUNT AS NET_SALES,

    oi.QUANTITY * p.COST AS TOT_COST,

    ((oi.QUANTITY * oi.UNIT_PRICE) - oi.DISCOUNT)
      - (oi.QUANTITY * p.COST) AS PROFIT,

    CASE
        WHEN r.ORDER_ITEM_ID IS NULL THEN 'N'
        ELSE 'Y'
    END AS RETURN_FLAG

FROM {{ ref('stg_orders_retail') }} o

JOIN {{ ref('stg_customers_retail') }} c
ON o.CUSTOMER_ID = c.CUSTOMER_ID

JOIN {{ ref('stg_order_items_retail') }} oi
ON o.ORDER_ID = oi.ORDER_ID

JOIN {{ ref('stg_products_retail') }} p
ON oi.PRODUCT_ID = p.PRODUCT_ID

LEFT JOIN {{ ref('stg_returns_retail') }} r
ON oi.ORDER_ITEM_ID = r.ORDER_ITEM_ID

)

SELECT *,
ROUND((PROFIT/NET_SALES)*100,2) AS PROFIT_MARGIN

FROM sales_calc