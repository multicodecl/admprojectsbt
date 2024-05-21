--
-- En este documento se definiran los insert de producción
--
-- Fecha del archivo: 21-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 21-05-2024 https://github.com/multicodecl
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

