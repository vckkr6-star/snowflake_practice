{{ config(materialized='table') }}

select deptno,
max(sal) as m_salary
from {{ ref('raw_emp') }} -- source_db.hr.emp
group by deptno

