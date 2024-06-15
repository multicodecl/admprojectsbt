--
-- En esta tabla se definiran los proyectos a desarrollar en la organización
--
-- Fecha del archivo: 15-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 15-06-2024 https://github.com/multicodecl
--
-- nombre, Guarda la descripción del estado de la tarea
-- fecha_inicio, Guarda la fecha de inicio de el proyecto
-- fecha_termino, Guarda la fecha de termino del proyecto
-- descripcion, Guarda la descripción breve del proyecto
-- hora_trabajo, Guarda la hora de trabajo hecho por las tareas asignadas
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_id_tip_pri_pro, Guarda la prioridad del proyecto
-- fk_id_tip_est_pro, Guarda el estado actual del proyecto
-- fk_id_tip_tag, Guarda el tag actual del proyecto
-- creado_por_nombre_grupo_usuarios, Guarda el nombre de grupo que creo el proyecto
-- desarrollador_asignados, Guarda los id de los usuarios asignados
-- 
-- Defecto: Ninguno
--

CREATE TABLE proyectos (
	id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	nombre VARCHAR(255) NOT NULL,
	fecha_inicio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	fecha_termino DATETIME NULL,
	descripcion TEXT NOT NULL,
	hora_trabajo SMALLINT(6) NOT NULL DEFAULT 0,
	
	docs_adjuntos TEXT NULL,
	
	fk_id_tip_pri_pro SMALLINT(6) NOT NULL,
	fk_id_tip_est_pro SMALLINT(6) NOT NULL,
	fk_id_tip_tag INT(11) NULL,
	
	creado_por_nombre_grupo_usuarios VARCHAR(255) NOT NULL,
	desarrollador_asignados TEXT NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);

ALTER TABLE proyectos
	ADD CONSTRAINT fk_tipo_prioridad_proyecto_proyectos FOREIGN KEY (fk_id_tip_pri_pro) REFERENCES tipo_prioridad_proyecto (id);
ALTER TABLE proyectos
	ADD CONSTRAINT fk_tipo_estado_proyecto_proyectos FOREIGN KEY (fk_id_tip_est_pro) REFERENCES tipo_estado_proyecto (id);

ALTER TABLE proyectos ADD INDEX(fk_id_tip_tag);
ALTER TABLE proyectos ADD INDEX(creado_por_nombre_grupo_usuarios);
