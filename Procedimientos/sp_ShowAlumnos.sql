
-- DROP PROCEDURE IF EXISTS sp_ShowAlumnos;
DELIMITER $$
USE sicat $$
CREATE PROCEDURE sp_ShowAlumnos
(
	_NumControl char(10),
	_Nombre varchar(150),
	_Sexo char(1), 
	_Semestre int, 
	_Nivel int, 
	_IdCarrera int
)
BEGIN
END $$
	SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre AS Carrera, a.Semestre 
    FROM tb_alumnos AS a
    INNER JOIN tb_carreras AS c ON a.id_carrera_fk = c.id_carrera_pk
    WHERE (a.Num_control LIKE CONCAT(_NumControl, '%') OR _NumControl IS NULL OR _NumControl = 'todos')
    AND (a.Nombre LIKE CONCAT(_Nombre, '%') OR _Nombre IS NULL OR _Nombre = 'todos')
    AND (a.Sexo = _Sexo OR _Sexo = 'X' OR _Sexo IS NULL)
    AND (a.Semestre = _Semestre OR _Semestre IS NULL OR _Semestre = 0)
    AND (a.Nivel = _Nivel OR _Nivel IS NULL OR _Nivel = 0)
    AND (a.id_carrera_fk = _IdCarrera OR _IdCarrera IS NULL OR _IdCarrera = 0);
DELIMITER ;