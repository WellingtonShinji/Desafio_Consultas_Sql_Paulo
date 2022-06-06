SELECT 
CONCAT(E.FIRSTNAME,' ',E.LASTNAME)             AS 'Nome completo',
count(OrderID)                                   AS 'Total de pedidos'
FROM EMPLOYEES E
INNER JOIN  ORDERS O ON E.EmployeeID = O.EmployeeID
GROUP BY E.FIRSTNAME


