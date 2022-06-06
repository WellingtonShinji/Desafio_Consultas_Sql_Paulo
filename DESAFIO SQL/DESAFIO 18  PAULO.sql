SELECT 
CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)                                          AS funcionarios,
S.JOB_TITLE                                                                   AS Cargos,
J.START_DATE                                                                  AS Data_inicio,
J.END_DATE                                                                    AS Data_fim,
concat(TIMESTAMPDIFF(YEAR,J.START_DATE ,J.END_DATE),' ','Anos')               AS Tempo_no_cargo
FROM EMPLOYEES E
INNER JOIN JOB_HISTORY J ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
INNER JOIN JOBS S ON J.JOB_ID = S.JOB_ID