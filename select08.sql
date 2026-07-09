/*******************/
기타 복수행 함수

집계

--emp 부서와 직업별 평균 급여와 사원수

select deptno, job, avg(sal) 평균급여, count(*) 사원수
from emp
group by deptno, job;

--emp 부서별 평균 급여와 사원수

select deptno, round(avg(sal),2) 평균급여, count(*) 사원수
from emp
group by deptno;

--emp 전체 사원의 평균 급여와 사원수
select avg(sal), count (*)
from emp;

--위 3개의 집계 내역을 하나로 통합

select deptno, job , avg(sal) 평균급여, count(*) 사원수
from emp
group by deptno, job
union all
select deptno, null  ,avg(sal) 평균급여, count(*) 사원수
from emp
group by deptno
union all
select null,null,avg(sal), count (*)
from emp
order by deptno, 2;




*** ROLLUP

select deptno,job,avg(sal) 평균급여, count(*) 사원수
from emp
group by rollup(deptno, job);


순위 RANK() OVER (ORDER by 정렬기준대상)
그룹단위 순위 rank() over (partition by 그룹기준 order by 정렬기준대상)
--dense_rank 

select
    ename,
    sal
from emp
order by sal;

select
    ename,
    sal,
    rank() over (order by sal) 낮은급여순위,
    rank() over (order by sal desc) 높은급여순위,
    dense_rank() over (order by sal desc) 높은급여순위
from emp;



select 
    name,
    height,
    RANK() OVER (order by height desc) 키순위,
    DENSE_RANK () OVER (order by height desc) 키순위,
    grade,
    height,
    RANK() OVER (partition by grade order by height desc)학년별키순위,
    DENSE_RANK() OVER ( partition by grade order by height desc)학년별키순위
from student
order by grade;



    


 