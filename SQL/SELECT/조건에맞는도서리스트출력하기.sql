SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d')
FROM BOOK
where PUBLISHED_DATE like '2021%' and CATEGORY = '인문'
order by PUBLISHED_DATE asc
