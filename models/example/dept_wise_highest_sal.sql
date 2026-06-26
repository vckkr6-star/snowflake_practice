select 
deptno,max(sal) as maximum_sal
from source_db.hr.emp
group by deptno

