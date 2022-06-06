SELECT
CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)           AS Nome_funcionario,
J.JOB_TITLE					                   AS Cargo
FROM EMPLOYEES E
INNER JOIN JOBS J ON E.JOB_ID = J.JOB_ID
ORDER BY J.JOB_TITLE