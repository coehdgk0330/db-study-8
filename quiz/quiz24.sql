CREATE TABLE temp_dept2
AS
SELECT * FROM dept2;

select * from temp_dept2;
--1
INSERT INTO temp_dept2
values(9010,'temp_10',1006,'temp area');
--2
insert into temp_dept2
values(9020, 'temp_20','1006',null);
--3
create table new_professor1
as
select profno,name,pay,bonus from professor
where profno <3000;

select * from new_professor1;
--4
update new_professor1
set bonus = 100
where name = 'Winona Ryder';

