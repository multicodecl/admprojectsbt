--
-- En esta tabla se definiran los estados de los proyectos actuales
--
-- Fecha del archivo: 03-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 04-06-2024 https://github.com/multicodecl
--
-- descripcion, Guarda la descripción del estado del proyecto
--
-- Defecto: Nuevo, Abierto, Desarrollo, Pruebas, Cerrado, Cancelado
--

CREATE TABLE tipo_estado_proyecto (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	descripcion VARCHAR(255) NOT NULL,
	
	activo TINYINT(4) NOT NULL DEFAULT 1
);
