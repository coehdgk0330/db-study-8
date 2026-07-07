/*---------------------*/
단일행 함수

select * from dual;
dual : 더미 데이터가 있는 임시테이블

select initcap('abc') from dual;
select ename, initcap(ename) from emp;

select name, LOWER(name), upper(name)
from student ;


select name, length(name)
from student ;

select
    length('abcd'), lengthb('abcd'),
    length('한글'), lengthb('한글')
    from dual;
    
--이름이 다섯자 이상 이름 가진 사람만 조회
select *
from emp
where length(ename) >= 5;

select
    '아침' || '점심',
    concat('아침','점심')
    from dual;

select
    '아침' || '점심'||'저녁',
    concat( concat('아침','점심'), '저녁')
    from dual;    



--substr(대상값 컬럼명 , 시작지점(1~), 자릿수)
select
    substr('abcdefg', 1,3),
    substr('abcdefg', 3,5),
    substr('abcdefg', -4,2),
    substr('abcdefg', -3,3)
from dual;


-- instr (대상값 컬렴명, 찾는값)
-- instr (대상값 컬렴명, 찾는값, 시작위치)
-- instr (대상값 컬렴명, 찾는값, 시작위치, 몇번째 값)

select
    '2026-01-02 10:11:33',
    instr('2026-01-02 10:11:33', '-'),
    instr('2026-01-02 10:11:33', '-',6),
    instr('2026-01-02 10:11:33', ':',15),
    instr('2026-01-02 10:11:33', '-',1,2)
    

    from dual;
    
select
    tel,
    instr(tel, ')') 괄호위치,
    instr(tel, '-')
    
from student;


--lpad read 왼쪽 오른쪽 채우기

select 
    LPAD('문자', 10, '-'),
    RPAD('13ab', 8 , '*'),
    LPAD(5,2,0),        
    LPAD(5,3,0),
    LPAD(77,2,0)
from dual;

SELECT
    '*'||' ABCD ' ||'*',
    '*'||LTRIM(' ABCD ') ||'*',
    '*'||RTRIM(' ABCD ') ||'*',
    '*'||TRIM(' ABCD ') ||'*',
    LTRIM('**ABCD**', '*'),
    RTRIM('**ABCD**', '*'),
    FROM DUAL;
    
SELECT
    REPLACE('ABCDE', 'C', '/')
    FROM DUAL;
    
SELECT
    birthday,
    REPLACE(birthday, '/','$')
    FROM student;
    
/*---------------------------*/
숫자

select
    round(1.123), --반올림
    round(1.789),
    round(1.789,1),  --소수점 1번째 자리수까지
    round(1.7896133, 3 ),
    round(3561.7896133, -1),
    trunc(1.12244),
    trunc(1.167844, 2),
    mod(15, 4), -- 나머지 연산
    ceil(123.123), -- 인접한 큰 정수
    floor(123.123), -- 인접한 작은 정수
    power(6, 3) --6의 3제곱 6*6*6
    from dual;
    
select
    rownum,     --조회결과에대해서 행번호
    ceil(rownum/3) 그룹번호,
    ceil(rownum/4) 팀번호,
    empno,
    ename
from emp;



/*------------------------*/
--날짜

select
    sysdate, --현재날짜
    systimestamp, --현재 날짜시간 
    months_between('2024-01-05', '2024-03-05'),
    months_between('2024-11-05', '2024-04-20')
    --앞날짜 - 뒷날짜 -> 월단위 환산
from dual;

select
    add_months(sysdate, 3),
    add_months(sysdate, 6),
    add_months(sysdate, -4),
    last_day(sysdate),
    next_day(sysdate, '월')
from dual;

select
    sysdate,
    round (sysdate),
    trunc(sysdate),
    trunc (sysdate, 'dd'), --year month day
    add_months(sysdate, 1),  --월단위 계산 +1월
    sysdate + 3,
    sysdate +7,
    
    --다음달 첫날
    last_day(sysdate)+1,
   trunc(  add_months(sysdate, 1), 'mm'),
   --전월의 마지막
    last_day(add_months(sysdate,-1)),
    trunc(sysdate,'mm')-1
from dual;
    
    