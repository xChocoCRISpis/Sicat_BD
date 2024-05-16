-- DROP PROCEDURE IF EXISTS sp_ShowCarreras;
DELIMITER $$
USE sicat $$
CREATE PROCEDURE sp_ShowCarreras
(
	
)
BEGIN
	SELECT id_carrera_pk,Nombre FROM tb_Carreras;
END $$
DELIMITER ;