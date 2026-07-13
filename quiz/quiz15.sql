select * from student;
select * from department;
select * from professor;

/*-------------------------------------------*/
--1
select * from student;
select * from score;
select * from hakjum;


select s.studno , s.name , c.total , h.grade
from student s , score c, hakjum h 
where s.studno = c.studno
and c.total between h.min_point and h.max_point
order by c.total desc;

--2
select s.studno , s.name , c.total , h.grade
from student s , score c, hakjum h 
where s.studno = c.studno
and c.total between h.min_point and h.max_point
and s.deptno1 in (101,102)
order by c.total desc;



--3
select s.name , s.grade , p.name , p.deptno , d.dname
from professor p,student s, department d
where s.profno = p.profno
AND p.deptno = d.deptno
and p.deptno != 301

