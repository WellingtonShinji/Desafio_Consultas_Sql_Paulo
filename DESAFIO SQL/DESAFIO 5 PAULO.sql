SELECT
	j.JOB_TITLE as Cargo,
    MAX_SALARY-MIN_SALARY                    as 'Variação Salarial'     ,
    FORMAT(MIN(e.SALARY)/12,2)               as ' Média Minima Mensal'  ,
    FORMAT(Max(e.SALARY)/12,2)               as ' Média Maxima Mensal'
FROM
	jobs j
INNER JOIN employees e on
	e.JOB_ID = j.JOB_ID
GROUP BY
	e.JOB_ID
ORDER BY
	MIN_SALARY,j.JOB_TITLE