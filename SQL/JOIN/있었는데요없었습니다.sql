SELECT INS.ANIMAL_ID, INS.NAME
FROM ANIMAL_INS as INS JOIN ANIMAL_OUTS as OUTS on INS.ANIMAL_ID = OUTS.ANIMAL_ID
where INS.DATETIME > OUTS.DATETIME
GROUP BY ANIMAL_ID
ORDER BY INS.DATETIME
