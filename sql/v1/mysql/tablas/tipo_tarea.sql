--
-- En esta tabla se definiran los tipos de tareas asignadas a los proyectos
--
-- Fecha del archivo: 06-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 06-06-2024 https://github.com/multicodecl
--
-- descripcion, Guarda la descripción del tipo de tarea a realizar
--
-- Defecto: Bug, Cambio, Desarrollo, Idea, Revisión, Pruebas, Optimización
--

CREATE TABLE tipo_tarea (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	descripcion VARCHAR(255) NOT NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);
