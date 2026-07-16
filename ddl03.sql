/**********************************************/
DDL 제약조건 KEY

PK(PRIMARY KEY) 기본키 (테이블에 한개만 설정 가능)
FK(Foreign Key) 외래키


create table t3
(
    no number(3) primary key,
    name varchar2(16),
    birth date
);

insert into t3 values (1,'n1', sysdate); 
insert into t3 values (1,'n1', sysdate);  --no 컬럼 (pk) 중복으로 불가
insert into t3 values (null,'n1', sysdate);  --no 컬럼 (pk) not null 제약

--테이블 에는 하나의 기본 키마 가질 수 있습니다.
create table t4
(
    no number(3) primary key,       --기본키(pk)설정
    id varchar2(32) primary key,    --기본키(pk)설정
    name varchar2(16) not null,
    birth date default sysdate
);

--(n개) 두 개의 컬럼을 조합해서 pk로 설정
create table t4
(
    no number(3),       --기본키(pk)설정
    id varchar2(32) ,    --기본키(pk)설정
    name varchar2(16) not null,   
    birth date default sysdate,
    constraint t4_pk primary key (no, id) -- no id 두개 컬럼을 조합으로 pk 설정
);






