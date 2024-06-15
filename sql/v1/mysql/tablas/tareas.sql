--
-- En esta tabla se definiran las tareas de los proyectos actuales
--
-- Fecha del archivo: 15-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 15-06-2024 https://github.com/multicodecl
--
-- nombre, Guarda el nombre de la tarea
-- fecha_inicio, Guarda la fecha de inicio de la tarea
-- fecha_termino, Guarda la fecha de termino de la tarea
-- descripcion, Guarda la descripción breve de la tarea
-- hora_trabajo, Guarda la hora de trabajo hecho de la tarea asignada
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_id_tip_tar, Guarda el tipo de tarea
-- fk_id_tip_prio_tar, Guarda la prioridad de la tarea
-- fk_id_tip_est_tar, Guarda el estado de la tarea
-- fk_id_tip_tag, Guarda el tag actual del proyecto
-- creado_por_nombre_grupo_usuarios, Guarda el nombre de grupo que creo la tarea
-- desarrollador_asignado, Guarda EL id del usuario asignado
--
-- Defecto: Ninguno
--

CREATE TABLE tareas (
	id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	nombre VARCHAR(255) NOT NULL,
	fecha_inicio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	fecha_termino DATETIME NULL,
	descripcion TEXT NOT NULL,
	hora_trabajo TEXT NULL,
	
	docs_adjuntos TEXT NULL,
	
	fk_id_tip_tar SMALLINT(6) NOT NULL,
	fk_id_tip_prio_tar SMALLINT(6) NOT NULL,
	fk_id_tip_est_tar SMALLINT(6) NOT NULL,
	fk_id_tip_tag TEXT NULL,
	
	creado_por_nombre_grupo_usuarios VARCHAR(255) NOT NULL,
	desarrollador_asignado INT(11) NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);

ALTER TABLE tareas
	ADD CONSTRAINT fk_tipo_tarea_tareas FOREIGN KEY (fk_id_tip_tar) REFERENCES tipo_tarea (id);
ALTER TABLE tareas
	ADD CONSTRAINT fk_tipo_prioridad_tarea_tareas FOREIGN KEY (fk_id_tip_prio_tar) REFERENCES tipo_prioridad_tarea (id);
ALTER TABLE tareas
	ADD CONSTRAINT fk_tipo_estado_tarea_tareas FOREIGN KEY (fk_id_tip_est_tar) REFERENCES tipo_estado_tarea (id);

ALTER TABLE tareas ADD INDEX(creado_por_nombre_grupo_usuarios);
