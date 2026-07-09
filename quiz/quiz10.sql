-- 1.
    select *
    from professor;

    
    
    select deptno,
           name,
           CASE 
           WHEN deptno = 101 AND name = 'Audie Murphy' THEN ' Best! '
           ELSE '(null)'
       END AS decode
    from professor;
   
   --2.
   
   select deptno,
           name,
           CASE 
           WHEN deptno = 101 AND name = 'Audie Murphy' THEN ' Best! '
           when deptno = 101 and name != 'audie murphy' then ' Good!'
           ELSE '(null)'
        END AS  비고
    from professor;
    
    --3.
    select deptno,
           name,
           CASE 
           WHEN deptno = 101 AND name = 'Audie Murphy' THEN ' Best! '
           when deptno = 101 and name != 'audie murphy' then ' Good!'
           ELSE 'N/A'
        END AS  비고
    from professor;
   
    --4.
    select name,
           jumin,
          
           case
           when deptno1 = 101 and  substr(jumin , 7,1)=1 then '남자'
           when deptno1 = 101 and  substr(jumin , 7,1)=2 then '여자'
           END AS 성별
           from student
           WHERE DEPTNO1=101;
           
    --5
   
           
           
           select name,
                  tel,
                  case
                  when substr(tel,1,2)=02 then '서울'
                  when substr(tel,1,3)=031 then '경기'
                  when substr(tel,1,3)=051 then '부산'
                  when substr(tel,1,3)=052 then '울산'
                  when substr(tel,1,3)=055 then '경남'
                end 지역명
           from student
           where deptno1 = 101
           
           
    
        