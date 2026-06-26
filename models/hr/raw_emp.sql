{{ config(materialized='table') }}

select empno,ename,sal,deptno
--from source_db.hr.emp
from {{ source('hr','emp') }}