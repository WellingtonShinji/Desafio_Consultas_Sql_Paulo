SELECT JOB_TITLE AS CARGO,
CASE 
                            WHEN MAX_SALARY < 10000 THEN 'BAIXO'
                            WHEN MAX_SALARY < 20000 THEN 'MEDIO'
                            WHEN MAX_SALARY < 30000 THEN 'ALTO'
                            WHEN MAX_SALARY > 30000 THEN 'ALTISSIMO'
END AS NIVEL                        
FROM jobs
ORDER BY JOB_TITLE;