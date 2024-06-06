--
-- En este documento se definiran los insert de producción
--
-- Fecha del archivo: 21-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 06-06-2024 https://github.com/multicodecl
--

-- Insert de config_modulos
INSERT INTO config_modulos (id, nombre, descripcion, modulo_activo, referencia_previa, activo) VALUES 
	('1', 'Configuración de Correo', 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas', 0, NULL, '1'),
	('2', 'Configuración de Plataforma', 'En esta tabla se definirá la configuración general de la plataforma en su versión actual', 0, NULL, '1'),
	('3', 'Usuarios', 'En esta tabla se definirán los datos de los usuarios del sistema', 0, NULL, '1'),
	('4', 'Proyectos', 'En esta tabla se definirán los proyectos a desarrollar en la organización', 0, NULL, '1'),
	('5', 'Tareas', 'En esta tabla se definirán las tareas de los proyectos actuales', 0, NULL, '1'),
	('6', 'Comentarios de Proyectos', 'En esta tabla se definirán los comentarios de los proyectos actuales', 0, '4', '1'),
	('7', 'Comentarios de Tareas', 'En esta tabla se definirán los comentarios de las tareas actuales', 0, '5', '1'),
	('8', 'Clientes', 'En esta tabla se definirán los clientes actuales', 0, '3', '1'),
	('9', 'Calendario', 'En esta tabla se definirán reuniones entre otros', 0, '3', '1');

-- Insert de tipo_usuarios
INSERT INTO tipo_usuarios (id, descripcion, es_predeterminado, ldap_defecto, numero_orden, activo) VALUES
(1, 'Super Administrador', 0, 0, 1, 1),
(2, 'Administrador General', 1, 0, 2, 1),
(3, 'Desarrollador', 1, 0, 3, 1),
(4, 'Testing QA', 1, 0, 4, 1),
(5, 'Cliente', 1, 0, 5, 1),
(6, 'Analista Funcional', 1, 0, 6, 1),
(7, 'Diseñador UX/UI', 1, 0, 7, 1),
(8, 'Arquitecto de Software', 1, 0, 8, 1),
(9, 'Ingeniero de Calidad', 1, 0, 9, 1),
(10, 'Ingeniero de DevOps', 1, 0, 10, 1);

-- Insert de tipo_estado_proyecto
INSERT INTO tipo_estado_proyecto (id, descripcion, activo) VALUES
(1, 'Nuevo', 1),
(2, 'Abierto', 1),
(3, 'Desarrollo', 1),
(4, 'Pruebas', 1),
(5, 'Cerrado', 1),
(6, 'Cancelado', 1);

-- Insert de tipo_estado_tarea
INSERT INTO tipo_estado_tarea (id, descripcion, activo) VALUES
(1, 'Nuevo', 1),
(2, 'Abierto', 1),
(3, 'Desarrollo', 1),
(4, 'Pruebas', 1),
(5, 'Cerrado', 1),
(6, 'Cancelado', 1);

-- Insert de tipo_prioridad_proyecto
INSERT INTO tipo_prioridad_proyecto (id, descripcion, activo) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1),
(4, 'Urgente', 1);

-- Insert de tipo_prioridad_tarea
INSERT INTO tipo_prioridad_tarea (id, descripcion, activo) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1),
(4, 'Urgente', 1);

-- Insert de tipo_tarea
INSERT INTO tipo_tarea (id, descripcion, activo) VALUES
(1, 'Bug', 1),
(2, 'Cambio', 1),
(3, 'Desarrollo', 1),
(4, 'Idea', 1),
(5, 'Revisión', 1),
(6, 'Pruebas', 1),
(7, 'Optimización', 1);

-- Insert de tipo_tags
INSERT INTO tipo_tags (id, descripcion, activo) VALUES
(1, 'Web', 1),
(2, 'Android', 1),
(3, 'Desktop', 1),
(4, 'SQL', 1);
