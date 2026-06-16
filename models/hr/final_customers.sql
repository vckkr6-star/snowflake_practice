{{config(materialized='view')}}

select *
from {{ ref('temp_customers') }}