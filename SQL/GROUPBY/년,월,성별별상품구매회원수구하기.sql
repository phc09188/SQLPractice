SELECT YEAR(SALES_DATE) as YEAR, MONTH(SALES_DATE) as MONTH,
GENDER,  COUNT(DISTINCT A.USER_ID) as USERS
FROM ONLINE_SALE as A
JOIN USER_INFO B on A.USER_ID = B.USER_ID
where GENDER is not null
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER
