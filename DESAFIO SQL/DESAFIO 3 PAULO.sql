
SELECT JOB_TITLE AS CARGO,
(MAX_SALARY - MIN_SALARY) AS 'DIFERENÇA ENTRE SALÁRIOS MÁXIMO E MÍNIMO'
FROM JOBS
ORDER BY (MAX_SALARY - MIN_SALARY),JOB_TITLE


