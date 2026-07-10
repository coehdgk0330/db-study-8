--1.
select *from emp;

select deptno 부서번호,
        avg(sal)
from emp
group by deptno
having avg(sal)>2000;



--2.
select * from panmae;

select p_date 판매일자,
        sum(P_QTY)판매수량,
        sum(p_total)판매금액
from panmae
group by p_date;

--3.
select p_date 판매일자,
        p_code 판매코드,
        sum(p_qty) 판매수량,
        sum(p_total) 판매금액
        from panmae
        group by rollup(p_date , p_code)
