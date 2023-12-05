DELIMITER $$
CREATE PROCEDURE `SP_IngresarUsers`(
    IN p_nombre VARCHAR(50),
    IN p_correo VARCHAR(100),
    IN p_contrasena VARCHAR(50),
    IN p_rol VARCHAR(10),
    OUT p_resultado INT 
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
        ROLLBACK;
        SET p_resultado = 0;
    END;
	START TRANSACTION;

    
        INSERT INTO usuario (nombre, correo, pass,rol)
        VALUES (p_nombre, p_correo, p_contrasena,p_rol);
    SELECT Row_COUNT() INTO p_resultado;
    COMMIT;
END$$
DELIMITER ;
