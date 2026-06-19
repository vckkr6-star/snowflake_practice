{{ config(
materialized= 'incremental'
,incremental_strategy= 'delete+insert '
,unique_key= 'order_id'
) }}

select * from raw_orders










