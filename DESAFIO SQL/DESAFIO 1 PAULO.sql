SELECT c.COUNTRY_NAME AS 'PAÍS',
CASE (r.REGION_NAME)
                        WHEN 'EUROPE' THEN 'INCLUIDO'
                        ELSE 'NÃO INCLUIDO'
END AS 'STATUS INCLUSÃO'                      
FROM countries c
inner join regions r
on C.REGION_ID = R.REGION_ID
order by c.COUNTRY_NAME


