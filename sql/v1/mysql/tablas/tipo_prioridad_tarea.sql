--
-- En esta tabla se definiran la prioridad de las tareas actuales
--
-- Fecha del archivo: 05-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 05-06-2024 https://github.com/multicodecl
--
-- descripcion, Guarda la descripción de la prioridad de tareas
--
-- Defecto: Bajo, Medio, Alto, Urgente
--

CREATE TABLE tipo_prioridad_tarea (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	descripcion VARCHAR(255) NOT NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);
