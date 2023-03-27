SELECT info.INGREDIENT_TYPE, sum(fh.TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF as fh, ICECREAM_INFO as info
where fh.FLAVOR = info.FLAVOR
group by info.INGREDIENT_TYPE
order by sum(fh.TOTAL_ORDER) asc
