--
-- En esta tabla se definiran los comentarios de los proyectos actuales
--
-- Fecha del archivo: 16-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 16-06-2024 https://github.com/multicodecl
--
-- descripcion, Guarda la descripción del comentario del proyecto
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_id_usu, Guarda el usuario del comentario
-- fk_id_pro, Guarda el proyecto del comentario
--
-- Defecto: Ninguno
--

CREATE TABLE comentarios_proyecto (
	id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	descripcion TEXT NOT NULL,
	docs_adjuntos TEXT NULL,
	
	fk_id_usu INT(11) NOT NULL,
	fk_id_pro INT(11) NOT NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);

ALTER TABLE comentarios_proyecto
	ADD CONSTRAINT fk_comentarios_proyecto_usuarios FOREIGN KEY (fk_id_usu) REFERENCES usuarios (id);
ALTER TABLE comentarios_proyecto
	ADD CONSTRAINT fk_comentarios_proyecto_proyectos FOREIGN KEY (fk_id_pro) REFERENCES proyectos (id);
