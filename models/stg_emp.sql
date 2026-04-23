{{
    config(
        materialized='incremental'
    )
}}
select
*
from {{ref('raw_emp_scd')}}
{% if is_incremental() %}
where loaded_date>=(select coalesce(max(loaded_date),'1900-01-01') from {{this}})
{% endif %}