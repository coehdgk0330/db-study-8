select 
    empno 사번,
    name 이름,
    birthday 생년월일,
    hobby 취미,
    pay 급여,
    pay*1.5 성과급,
    decode(emp_type,'Permanent employee' , 'Permanent family','Perment employee','Perment family','기타') 직원분류,
    TEL,
    CASE
    when pay between 35000001 and 45000000 then '하'
    when pay between 45000001 and 60000000 then '중'
    when pay >=60000001 then '상'  
    else '화이팅'
    end as 급여수준
    from emp2
where substr(birthday,1,1)=7 and ( substr(tel,1,2)=02 or substr(tel,1,3)=031 );

select * from emp2