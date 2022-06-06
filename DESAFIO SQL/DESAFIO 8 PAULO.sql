SELECT
C.ContactName                     AS 'Nome de contato',
S.ShipperName                     AS 'Empresa que fez o envio',
O.OrderDate                       AS 'Data do pedido'
FROM ORDERS O
INNER JOIN CUSTOMERS C ON O.CustomerID = C.CustomerID
INNER JOIN SHIPPERS S ON O.ShipperID = S.ShipperID
WHERE S.ShipperName = 'Speedy Express' OR S.ShipperName ='United Package'