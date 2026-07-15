--1
select name, position, pay
from emp2
where pay >
            (select min(pay)
            from emp2
            where position = 'Section head');
--2
select name,grade,weight
from student
where weight <
                (select min(weight)
                from student
                where grade = 2);
--3
select * from emp2;
select * from dept2;

select d.dname,e.name,e.pay
from dept2 d , emp2 e , (select deptno , avg(pay) as avg_pay
                        from emp2
                        group by deptno) a
where d.dcode = e.deptno
and e.deptno = a.deptno
and e.pay < a.avg_pay;

                    




