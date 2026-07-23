with clean_data as(
select 
customer_id,
upper(city) as city,
CASE
    WHEN LOWER(TRIM(phone)) = 'null' THEN 'UNKNOWN'
    ELSE phone
END AS phone,
row_number() over(partition by customer_id order by updated_date) as rn,
_fivetran_deleted
from {{ source('new','customers') }}
)
select * from clean_data
where rn=1 and
_fivetran_deleted='FALSE'