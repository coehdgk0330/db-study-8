--1
select * from professor;
select * from department;



select p.profno, p.name,d.dname
    from professor p , 
        department d 
          where p.deptno=d.deptno
        and  hiredate =(select min(hiredate)from professor a
                       where a.deptno=p.deptno)
                       order by hiredate;
--2
select * from emp2;

select name ,position , pay
from emp2 a
where pay = (select max(pay)from emp2 b
                where a.position = b.position
            group by position)
            order by pay;
                      
       