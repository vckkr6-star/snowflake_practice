{{ 
    config(
        materialized='incremental',
        incremental_strategy='delete+insert',
        unique_key='empno'
        )
}}

select *
from {{ source('hr','emp') }}