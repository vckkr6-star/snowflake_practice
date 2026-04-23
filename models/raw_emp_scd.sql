{{
    config(
        materialized='incremental',
        incremental_strategy='delete+insert',
        unique_key='empno'
    )
    }}
    select *,
    sysdate() as loaded_date
    from {{source('hr','emp')}}