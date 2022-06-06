SELECT 
CONTACTNAME                                AS Nome,
COUNTRY                                    AS País,
COUNT(CONTACTNAME)                         AS Numero_de_Compatriotas
FROM SUPPLIERS
GROUP BY COUNTRY
ORDER BY CONTACTNAME