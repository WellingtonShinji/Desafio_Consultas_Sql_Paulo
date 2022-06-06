SELECT 
P.PRODUCTNAME                      AS Produto,
SUM(D.Quantity)                    AS Quantidade
FROM PRODUCTS P
INNER JOIN ORDER_DETAILS D ON P.ProductID = D.ProductID
GROUP BY PRODUCTNAME
HAVING SUM(D.Quantity) > 80
