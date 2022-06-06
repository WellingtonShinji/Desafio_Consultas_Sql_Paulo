SELECT JOB_TITLE                               AS 'Cargo',
ROUND(((MAX_SALARY+MIN_SALARY)/2),2)           AS 'Média salarial',
CASE
                        WHEN ((MAX_SALARY+MIN_SALARY)/2) <=5800  THEN 'Júnior'
                        WHEN ((MAX_SALARY+MIN_SALARY)/2) <=7500  THEN 'Pleno'
                        WHEN ((MAX_SALARY+MIN_SALARY)/2) <=10500 THEN 'Sênior'
                        WHEN ((MAX_SALARY+MIN_SALARY)/2) > 10500 THEN 'CEO'
END                                            AS 'Senioridade'                        
FROM JOBS
ORDER BY MIN_SALARY,JOB_TITLE