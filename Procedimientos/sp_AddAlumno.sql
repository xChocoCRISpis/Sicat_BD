-- DROP PROCEDURE IF EXISTS sp_AddAlumno;
DELIMITER $$
USE sicat $$
CREATE PROCEDURE sp_AddAlumno
(
	_Num_control char(10), 
	_Nombre varchar(150),
	_Ap_paterno varchar(150), 
	_Ap_materno varchar(150), 
	_Sexo char(1), 
	_Fecha_nac date, 
	_Semestre int, 
	_Nivel int, 
	_Foto text,
	_Telefono char(12), 
	_Correo varchar(100), 
	_Id_carrera int
)
BEGIN
	IF(_Semestre IS NULL OR _Semestre<1)
		THEN
			SET _Semestre=1;
        END IF;
        
        IF(_Nivel IS NULL OR _Nivel<1)
		THEN
			SET _Nivel=1;
        END IF;
        
	IF EXISTS(SELECT id_carrera_pk FROM tb_carreras WHERE id_carrera_pk=_Id_carrera)
    THEN
        INSERT INTO tb_alumnos (Num_control, Nombre, Ap_paterno, Ap_materno, Sexo, Fecha_nac, Semestre, Nivel, Foto, Id_carrera_fk, Telefono, Correo)
        VALUES (_Num_control, _Nombre, _Ap_paterno, _Ap_materno, _Sexo, _Fecha_nac, _Semestre, _Nivel, _Foto, _Id_carrera, _Telefono, _Correo);
    ELSE
        SELECT  "No se esncontro la carrera" as msg;
    END IF;

END $$
DELIMITER ;
-- SELECT * FROM tb_alumnos
-- SELECT * FROm tb_carreras