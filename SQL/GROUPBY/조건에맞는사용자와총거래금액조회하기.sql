SELECT b.USER_ID, b.NICKNAME, SUM(a.PRICE) as TOTAL_SALES
from USED_GOODS_BOARD as a, USED_GOODS_USER as b
where b.USER_ID = a.WRITER_ID and a.STATUS = 'DONE'
group by USER_ID
HAVING TOTAL_SALES >= 700000
order by TOTAL_SALES
