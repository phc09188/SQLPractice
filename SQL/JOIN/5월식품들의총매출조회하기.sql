SELECT a.PRODUCT_ID, a.PRODUCT_NAME, SUM(b.AMOUNT*a.PRICE) as TOTAL_SALES
FROM FOOD_PRODUCT as a JOIN FOOD_ORDER as b on a.PRODUCT_ID = b.PRODUCT_ID
WHERE b.PRODUCE_DATE like '2022-05%'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES desc, PRODUCT_ID
