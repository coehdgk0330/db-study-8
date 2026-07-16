select * from emp2;
select * from dept2;

select trunc(avg(pay),0)
from emp2 e, dept2 d
where e.deptno = d.dcode
and d.area= (select d.area
            from dept2 d , emp2 e
            where d.dcode = e.deptno 
            and name='AL Pacino');
            
 --정답           
select e.empno , e.name, e.deptno , d.dname , d.area , e.pay
from emp2 e , dept2 d
where e.deptno = d.dcode
and pay>(select trunc(avg(pay),0)
from emp2 e, dept2 d
where e.deptno = d.dcode
and d.area= (select d.area
            from dept2 d , emp2 e
            where d.dcode = e.deptno 
            and name='AL Pacino'));
            
