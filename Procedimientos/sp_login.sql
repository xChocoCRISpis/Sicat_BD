-- DROP PROCEDURE IF EXISTS sp_login;
DELIMITER $$
USE sicat $$
CREATE PROCEDURE sp_login
(
    IN _Nombre_usuario VARCHAR(50),
    IN _Contrasena VARCHAR(50),
    OUT _Tipo VARCHAR(20),
    OUT _IdUsuario INT
)
BEGIN

    IF EXISTS(
        (SELECT us.Id_usuario_pk FROM tb_usuarios as us 
        WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
        AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci))
    )
    THEN
        SET _IdUsuario = (
            SELECT us.Id_usuario_pk FROM tb_usuarios as us 
            WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
            AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci)
        );
        
        SET _Tipo = (
            SELECT us.tipo FROM tb_usuarios as us 
            WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
            AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci)
        );
    ELSE
        SET _IdUsuario = NULL;
        SET _Tipo = NULL;
    END IF;
END $$
DELIMITER ;
