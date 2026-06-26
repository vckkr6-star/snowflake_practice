{{ config(
materialized= 'incremental'
,incremental_strategy= 'delete+insert '
,unique_key= 'order_id'
) }}

select order_id,
customer_id,
amount  from raw_orders










