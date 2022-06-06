SELECT 
CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)               AS 'Nome completo',
J.JOB_TITLE                                        AS 'Cargo',
H.START_DATE                                       AS 'Data de início do cargo'
FROM JOB_HISTORY H
INNER JOIN EMPLOYEES E  on
	E.DEPARTMENT_ID = H.DEPARTMENT_ID
INNER JOIN JOBS J  on
	E.JOB_ID = J.JOB_ID
WHERE month(H.START_DATE)  BETWEEN 01 AND 03