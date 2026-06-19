{{ config(materialized='table') }}

select e.empno,e.ename,e.sal,e.deptno
,d.dname
from {{ ref('raw_emp') }} as e inner join source_db.hr.dept as d
on e.deptno=d.deptno