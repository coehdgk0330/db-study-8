/*---------------------*/
1. 조회하기 SELECT

SELECT 조회대상 (컬럼명) FROM 테이블명 ,
조회대상 * : 전체컬럼 ALL

테이블 구조 확인 (Describe)
DESC 테이블명;
desc emp

DESC DEPT;
select * from dept;
SELECT * FROM DEPT;

SELECT * FROM FRUIT; -- fruit 테이블의 모든 컬럼 데이터 조회
select * from loan;
select * from product; -- product 테이블의 모든 컬럼 데이터 조회

select * from emp;
select job from emp;
select job, hiredate, mgr from emp;

--가독성
select
    job,
    hiredate,
    mgr
from emp;

select * from emp;

select *
from emp;

/*-----------------------------------*/
-- 컬럼명 별도 지정 (별칭 지정)
SELECT 
    컬럼명 AS "컬럼별칭",
    컬럼명 "컬럼별칭",
    컬럼명 컬럼별칭
FROM 테이블명;

SELECT
    empno as "사원번호",
    ename "사원명",
    job 직업,
    sal "급여 데이터"
from emp;

select
    empno,
    empno empnumber,
    empno employeeno
from emp;


/*-----------------------------------*/
--조회데이터 리터럴 값 활용

select '문자', 123 from emp;
select '문자', 123, empno from emp;

select '문자', 123 from dept;
select * from dept;

select '문자', 123 from dual; --dual 임시테이블
select * form dual;

select '문자확인' AS "문자컬럼별칭",
        123+234-33 숫자연산결과
FROM DUAL;

SELECT DNAME, loc from dept;

--문자 이어 붙이기

select '문자'||'이어붙이기' form dual,
select * from dept;
selec deptno, dname from dept;
selec deptno || dname from dept;
select
 '부서번호 : ' || deptno AS "부서번호",
    deptno,
    '부서번호+500 = ' || (deptno + 500)
from dept;



/*----------------------*/
-- DISTINCT 중복제거
SELECT * FROM EMP;
SELECT JOB FROM EMP;
SELECT DISTINCT JOB FROM EMP;
SELECT DISTINCT (JOB) FROM EMP;

SELECT DISTINCT JOB, DEPTNO FROM EMP;



