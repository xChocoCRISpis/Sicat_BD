USE SICAT;

-- Inserts para tb_usuarios
INSERT INTO tb_usuarios (Nombre, Contrasena, Tipo, Cadena_qr, Imagen_qr) VALUES 
    ('Usuario1', 'contraseña1', 1, 'cadena_qr_1', 'imagen_qr_1'),
    ('Usuario2', 'contraseña2', 2, 'cadena_qr_2', 'imagen_qr_2'),
    ('Usuario3', 'contraseña3', 1, 'cadena_qr_3', 'imagen_qr_3'),
    ('Usuario4', 'contraseña4', 2, 'cadena_qr_4', 'imagen_qr_4'),
    ('Usuario5', 'contraseña5', 1, 'cadena_qr_5', 'imagen_qr_5');

-- Inserts para tb_encargados
INSERT INTO tb_encargados (Nombre, Ap_paterno, Ap_materno, Id_Usuario_fk) VALUES 
    ('Encargado1', 'Apellido1', 'Apellido1', 1),
    ('Encargado2', 'Apellido2', 'Apellido2', 2),
    ('Encargado3', 'Apellido3', 'Apellido3', 3),
    ('Encargado4', 'Apellido4', 'Apellido4', 4),
    ('Encargado5', 'Apellido5', 'Apellido5', 5);

-- Inserts para tb_horarios
INSERT INTO tb_horarios (Dia, Hora_inicio, Hora_fin) VALUES 
    ('Lunes', '08:00:00', '10:00:00'),
    ('Martes', '09:00:00', '11:00:00'),
    ('Miércoles', '10:00:00', '12:00:00'),
    ('Jueves', '11:00:00', '13:00:00'),
    ('Viernes', '12:00:00', '14:00:00');

-- Inserts para tb_actividades
INSERT INTO tb_actividades (Nombre, Tipo) VALUES 
    ('Actividad1', 'DEP'),
    ('Actividad2', 'CUL'),
    ('Actividad3', 'DEP'),
    ('Actividad4', 'DEP'),
    ('Actividad5', 'CUL');
    
    
    -- Inserts para tb_encargados_detalle
INSERT INTO tb_encargados_detalle (Id_encargado_fk, Id_horario_fk, Id_actividad_fk) VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);

-- Inserts para tb_eventos
INSERT INTO tb_eventos (Nombre, Lugar, Fecha, Hora) VALUES 
    ('Evento1', 'Lugar1', '2024-05-01', '08:00:00'),
    ('Evento2', 'Lugar2', '2024-05-02', '09:00:00'),
    ('Evento3', 'Lugar3', '2024-05-03', '10:00:00'),
    ('Evento4', 'Lugar4', '2024-05-04', '11:00:00'),
    ('Evento5', 'Lugar5', '2024-05-05', '12:00:00');

-- Inserts para tb_carreras
INSERT INTO tb_carreras (Nombre, Clave, Nombre_corto) VALUES 
    ('Carrera1', 'CLV1', 'C1'),
    ('Carrera2', 'CLV2', 'C2'),
    ('Carrera3', 'CLV3', 'C3'),
    ('Carrera4', 'CLV4', 'C4'),
    ('Carrera5', 'CLV5', 'C5');

-- Inserts para tb_alumnos
INSERT INTO tb_alumnos (Num_control, Nombre, Ap_paterno, Ap_materno, Sexo, Fecha_nac, Semestre, Nivel, Foto, Id_carrera_fk) VALUES 
    ('12345', 'Alumno1', 'Apellido1', 'Apellido1', 'M', '2000-01-01', 1, 1, 'foto1.jpg', 1),
    ('23456', 'Alumno2', 'Apellido2', 'Apellido2', 'F', '2000-02-02', 2, 2, 'foto2.jpg', 2),
    ('34567', 'Alumno3', 'Apellido3', 'Apellido3', 'M', '2000-03-03', 3, 3, 'foto3.jpg', 3),
    ('45678', 'Alumno4', 'Apellido4', 'Apellido4', 'F', '2000-04-04', 4, 4, 'foto4.jpg', 4),
    ('56789', 'Alumno5', 'Apellido5', 'Apellido5', 'M', '2000-05-05', 5, 5, 'foto5.jpg', 5);

-- Inserts para tb_participa
INSERT INTO tb_participa (Id_alumno_fk, Id_evento_fk) VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);