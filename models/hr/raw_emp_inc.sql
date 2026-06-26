{{ 
    config(
        materialized='incremental',
        incremental_strategy='delete+insert',
        unique_key='empno'
        )
}}

select empno,ename,sal,deptno
from {{ source('hr','emp') }}