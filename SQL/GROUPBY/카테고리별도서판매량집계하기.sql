SELECT b.CATEGORY, SUM(bs.SALES) as TOTAL_SALES
from BOOK as b, BOOK_SALES as bs
where b.BOOK_ID = bs.BOOK_ID and DATE_FORMAT(bs.SALES_DATE, "%Y-%m") = "2022-01"
group by b.CATEGORY
order by b.CATEGORY asc
