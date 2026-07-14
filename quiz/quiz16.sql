select * from panmae;
select * from product;
select * from gift;

select *
from panmae pm , product pd , gift g
where pm.p_code = pd.p_code;

select TO_CHAR(TO_DATE(pm.p_date, 'YYYYMMDD'), 'YYYY-MM-DD') 판매일자,
        pm.p_code 상품코드 ,
        pd.p_name 상품명 ,
        TO_CHAR(pd.p_price, '999,999,999') 상품가,
        pm.p_qty 구매수량,
        TO_CHAR(pm.p_total, '999,999,999') 총금액,
        TO_CHAR(pm.p_total*100, '999,999,999') 적립포인트,
case when pm.p_date=to_date('20110101','yyyymmdd')then TO_CHAR(pm.p_total*200, '999,999,999') else TO_CHAR(pm.p_total*100, '999,999,999') end 새해2배적립포인트,
        g.gname 사은품명,
        TO_CHAR(g.g_start, '999,999,999') 포인트START,
        TO_CHAR(G.G_END, '999,999,999') 포인트END
from panmae pm , product pd , gift g
where pm.p_code = pd.p_code
AND case when pm.p_date=to_date('20110101','yyyymmdd')then pm.p_total*200 else pm.p_total*100 end BETWEEN G.G_START AND G.G_END
order by pm.p_date