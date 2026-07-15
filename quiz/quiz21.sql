--1
select * from student;
select * from department;

select d.dname,s.height,s.name,height
from student s , department d
where s.deptno1 = d.deptno
and s.height = (select  max(s2.height)from student s2
                where s2.deptno1 =d.deptno
                );
--2
select * from student;

select s1.grade , s1.name , s1.height ,(select avg(height)
                                from student s2
                                where s2.grade = s1.grade ) as avg_height
from student s1
where s1.height >(select avg(height)
                                from student s2
                                where s2.grade = s1.grade)
order by s1.grade , s1.height;





