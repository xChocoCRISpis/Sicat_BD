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
	IF(_NumControl IS NOT NULL AND _NumControl!= "todos")
		THEN
        SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE a.Num_control LIKE CONCAT( _NumControl,'%');
	END IF;
    IF(_Nombre IS NOT NULL AND _Nombre!= "todos")
		THEN
        SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE a.Nombre LIKE CONCAT( _Nombre,'%');
	END IF;
	IF(_Sexo == 'X')
		THEN
		SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk;
        ELSE
		SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE Sexo = _Sexo;
	END IF;
    
    IF(_Semestre IS NOT NULL  AND _Semestre != 0)
		THEN
		SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE _Semestre = a.Semestre;
        ELSE
	END IF;
    
    IF(_Nivel IS NOT NULL AND _Nivel !=0 )
		THEN
        SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE _Nivel = a.Nivel;
        ELSE
	END IF;
    
    IF (_IdCarrera IS NOT NULL AND _IdCarrera != 0 )
		THEN
         SELECT a.Num_control, a.Nombre, a.Ap_paterno, a.Ap_Materno, a.Sexo, c.Nombre , a.Semestre FROM tb_alumnos AS a
        INNER JOIN tb_carreras AS c ON  a.id_carrera_fk=c.id_carrera_pk
        WHERE _Carrera = a.id_carrera_fk;
		ELSE
    END IF;
DELIMITER ;
-- SELECT * FROM tb_alumnos