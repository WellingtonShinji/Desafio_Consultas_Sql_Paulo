SELECT 
P.ProductName                                    AS Nome_Produto,
FORMAT(AVG(D.Quantity),2)                        AS Quantidade_media_pedidos
FROM PRODUCTS P
INNER JOIN ORDER_DETAILS D ON P.ProductID = D.ProductID
GROUP BY P.ProductName
HAVING Quantidade_media_pedidos > 20.00
