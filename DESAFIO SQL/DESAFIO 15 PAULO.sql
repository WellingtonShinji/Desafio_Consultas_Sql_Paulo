DROP PROCEDURE Buscar_media_por_Cargo
DELIMITER $$
CREATE PROCEDURE Buscar_media_por_Cargo (CARGO varchar (35))
BEGIN
SET CARGO = concat('%',cargo,'%');
SELECT FORMAT((MAX_SALARY+MIN_SALARY)/2,2) as Media_Salarial
    FROM JOBS
WHERE JOB_TITLE LIKE CARGO;
END $$
DELIMITER ;

CALL Buscar_media_por_Cargo('Programmer');








