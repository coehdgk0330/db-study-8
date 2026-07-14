-- quiz 17
--1.

select *from student;
select *from department;

select s.name , s.deptno1, d.dname
from student s , department d
where s.deptno1 = d.deptno
order by s.deptno1;

--2.
select * from emp2;
select * from p_grade;

select  e.name ,e.position,  e.pay , g.s_pay LOWPAY ,g.e_pay HIGHPAY
from emp2 e left outer join p_grade g
on e.position = g.position
where e.position is not null;
--3.
select * from emp2;
select * from p_grade;

select e.name , (2010 -(1900+substr(e.birthday, 0,2)))+1 한국나이, e.position 지금포지션 ,g.position 그나이에맞는포지션
from emp2 e left outer join p_grade g 
on (2010 -(1900+substr(e.birthday, 0,2)))+1 between g.s_age and g.e_age
order by 한국나이;
--4.
select * from customer;
select * from gift;

select c.gname , c.point , g.gname
from customer c , gift g 
where c.point >= g.g_start
and g.gname = 'Notebook';

--5.
--5-1 서브쿼리
select a.profno , a.name , a.hiredate,(select count(*) from professor where hiredate <a.hiredate) count
from professor a
order by a.hiredate;

--5-2
select *
from professor;

select a.profno,a.name,a.hiredate,count(b.profno)
from professor a left outer join professor b
on a.hiredate > b.hiredate
group by a.profno,a.name,a.hiredate
order by a.hiredate ;





--6.
select * from emp;

select e.empno,e.ename, e.hiredate,count(em.empno)
from emp e left outer join emp em
on e.hiredate > em.hiredate
group by e.empno,e.ename,e.hiredate
order by e.hiredate;







