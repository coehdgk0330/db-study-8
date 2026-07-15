/**************************/
DDL
테이블 조작


테이블 생성

CREATE TABLE 테이블명
(
    컬럼명 컬럼타입 기타속성/제약,
    컬럼명 컬럼타입 기타속성/제약,
    컬럼명 컬럼타입 기타속성/제약,
);


create table new_table1 --테이블 스키마(Schema)
(
    no number(3),       --숫자형 3자리수
    name VARCHAR(16),    --문자형 16바이트
    birth DATE          --날짜형
);

select * from new_table1;

-------------------------------------------
테이블 복사


select * from dept2;

--dept2 테이블 구조 + 데이터 -> 복사 -> dept3 새로운 테이블 생성
select * from dept3;

create table dept3
as
select * from dept2;

--dept2 테이블 구조 일부 + 데이터 -> 복사 -> dept4 새로운 테이블 생성
create table dept4
as
select dcode, dname from dept2;

select * from dept4;

--dept2 테이블 구조만 복사 (데이터 제외) ->복사 ->dept5 생성
create table dept5
as
select * from dept2
where 1=2;

select * from dept5;

---------------------------------
--테이블 변경(수정)

select * from dept4;

--loc 컬럼추가
alter table dept4
add (loc varchar2(32));

--1v 컬럼 추가 기본값 1
alter table dept4
add (lv number(3) default 1);

-- 컬럼삭제
alter table dept4
drop column LV;

--테이블 삭제
DROP TABLE 테이블명;

--테이블 내부 데이터 포맷 (초기화)
TRUNCATE TABLE 테이블명;

DDL : ROLLBACK 불가, 자동 COMMIT 발생

SELECT * FROM DEPT4;

TRUNCATE TABLE DEPT4;
DROP TABLE DEPT4;