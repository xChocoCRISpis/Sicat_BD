-- DROP DATABASE SICAT;
-- CREATE DATABASE SICAT;
USE SICAT;

CREATE TABLE tb_usuarios(
	Id_usuario_pk INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Contrasena VARCHAR(50),
    Tipo INT,
    Cadena_qr TEXT,
    Imagen_qr TEXT
);

CREATE TABLE tb_encargados(
	Id_encargado_pk INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(150),
    Ap_paterno VARCHAR(150),
    Ap_materno VARCHAR(150),
    Id_Usuario_fk INT,
    
    FOREIGN KEY (id_usuario_fk) REFERENCES tb_usuarios(id_usuario_pk)
);

CREATE TABLE tb_horarios(
	Id_horario_pk INT AUTO_INCREMENT PRIMARY KEY,
    Dia VARCHAR(15),
    Hora_inicio TIME,
    Hora_fin TIME
);

CREATE TABLE tb_actividades(
	Id_actividad_pk INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(200),
    Tipo CHAR(3)
);

CREATE TABLE tb_encargados_detalle(
	Id_encargado_fk INT,
    Id_horario_fk INT,
    Id_actividad_fk INT,
    
    FOREIGN KEY(Id_encargado_fk) REFERENCES tb_encargados(Id_encargado_pk),
    FOREIGN KEY(Id_horario_fk) REFERENCES tb_horarios(Id_horario_pk),
    FOREIGN KEY(Id_actividad_fk) REFERENCES tb_actividades(Id_actividad_pk)
);

CREATE TABLE tb_eventos(
	Id_evento_pk INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(300),
    Lugar VARCHAR(300),
    Fecha DATE,
    Hora TIME
);

CREATE TABLE tb_carreras(
	Id_carrera_pk INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(300),
    Clave CHAR(20),
    Nombre_corto CHAR(10)
);

CREATE TABLE tb_alumnos(
	Id_alumno_pk INT AUTO_INCREMENT PRIMARY KEY,
    Num_control CHAR(10),
    Nombre VARCHAR(150),
    Ap_paterno VARCHAR(150),
    Ap_materno VARCHAR(150),
    Sexo CHAR(1),
    Fecha_nac DATE,
    Semestre INT,
    Nivel INT,
    Foto TEXT,
    Id_carrera_fk INT,
    
    FOREIGN KEY (id_carrera_fk) REFERENCES tb_carreras(id_carrera_pk)
);

CREATE TABLE tb_participa(
	Id_participa_pk INT AUTO_INCREMENT PRIMARY KEY,
    Id_alumno_fk INT,
    Id_evento_fk INT,
    
    FOREIGN KEY (Id_alumno_fk) REFERENCES tb_alumnos(id_alumno_pk),
    FOREIGN KEY (Id_evento_fk) REFERENCES tb_eventos(id_evento_pk)
);

-- NOTA: NO SE PUEDE CREAR LA TABLA HASTA TENER MONGODB

-- CREATE TABLE tb_pertence(
--	Id_pertenece_pk INT AUTO_INCREMENT PRIMARY KEY,
--    Horas INT,
--    Activo BIT,
--    Id_asistencia_fk INT,
--    Id_actividad_fk INT,
--    Id_alumnos_fk INT,
--    
--    FOREIGN KEY (Id_asistencia_fk) REFERENCES tb_asistencias(id_asistencia_pk),
--    FOREIGN KEY (Id_actividad_fk) REFERENCES tb_actividades_fk(id_actividad_pk),
--    FOREIGN KEY (Id_alumnos_fk) REFERENCES tb_alumnos(id_alumno_pk)
-- );


