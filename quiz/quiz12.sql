/*1. student 테이블을 참고해서 진행하세요.
학생들의 이름과 주민번호, 생일 그리고  jumin, birthday 참고해서 태어난 날짜별로 분기를 표시하는 쿼리를 작성하세요.
태어난 월에 따라서 각 분기로 표시
1~3 1분기
4~6 2분기
7~9 3분기
10~12 4분기*/
select  
    name,
    jumin,
    birthday,
    ceil (substr(birthday,4,2)/3)||'분기'분기
    from student;
    
select
    empno,
    ename,
    sal,
    case
    when sal<=1000 then 'Level 1'
    when sal<=2000 then 'Level 2'
    when sal<=3000 then 'Level 3'
    when sal<=4000 then 'Level 4'
    when sal>=4001 then 'Level 5'
    end as 급여등급
from emp;




