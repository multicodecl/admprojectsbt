--
-- En este documento se definiran los datos predeterminado en Español
--
-- Fecha del archivo: 21-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 05-06-2024 https://github.com/multicodecl
--

-- Actualización de la configuración de modulos
UPDATE config_modulos
    SET nombre = 'Configuración de Correo',
        descripcion = 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas'
WHERE id = 1;

UPDATE config_modulos
    SET nombre = 'Configuración de Plataforma',
        descripcion = 'En esta tabla se definirá la configuración general de la plataforma en su versión actual'
WHERE id = 2;

UPDATE config_modulos
    SET nombre = 'Usuarios',
        descripcion = 'En esta tabla se definirán los datos de los usuarios del sistema'
WHERE id = 3;

UPDATE config_modulos
    SET nombre = 'Proyectos',
        descripcion = 'En esta tabla se definirán los proyectos a desarrollar en la organización'
WHERE id = 4;

UPDATE config_modulos
    SET nombre = 'Tareas',
        descripcion = 'En esta tabla se definirán las tareas de los proyectos actuales'
WHERE id = 5;

UPDATE config_modulos
    SET nombre = 'Comentarios de Proyectos',
        descripcion = 'En esta tabla se definirán los comentarios de los proyectos actuales'
WHERE id = 6;

UPDATE config_modulos
    SET nombre = 'Comentarios de Tareas',
        descripcion = 'En esta tabla se definirán los comentarios de las tareas actuales'
WHERE id = 7;

UPDATE config_modulos
    SET nombre = 'Clientes',
        descripcion = 'En esta tabla se definirán los clientes actuales'
WHERE id = 8;

UPDATE config_modulos
    SET nombre = 'Calendario',
        descripcion = 'En esta tabla se definirán reuniones entre otros'
WHERE id = 9;

-- Actualización de los tipos de usuarios
UPDATE tipo_usuarios SET descripcion = 'Super Administrador' WHERE id = 1;
UPDATE tipo_usuarios SET descripcion = 'Administrador General' WHERE id = 2;
UPDATE tipo_usuarios SET descripcion = 'Desarrollador' WHERE id = 3;
UPDATE tipo_usuarios SET descripcion = 'Testing QA' WHERE id = 4;
UPDATE tipo_usuarios SET descripcion = 'Cliente' WHERE id = 5;
UPDATE tipo_usuarios SET descripcion = 'Analista Funcional' WHERE id = 6;
UPDATE tipo_usuarios SET descripcion = 'Diseñador UX/UI' WHERE id = 7;
UPDATE tipo_usuarios SET descripcion = 'Arquitecto de Software' WHERE id = 8;
UPDATE tipo_usuarios SET descripcion = 'Ingeniero de Calidad' WHERE id = 9;
UPDATE tipo_usuarios SET descripcion = 'Ingeniero de DevOps' WHERE id = 10;

-- Actualización de los tipos de estado de proyectos
UPDATE tipo_estado_proyecto SET descripcion = 'Nuevo' WHERE id = 1;
UPDATE tipo_estado_proyecto SET descripcion = 'Abierto' WHERE id = 2;
UPDATE tipo_estado_proyecto SET descripcion = 'Desarrollo' WHERE id = 3;
UPDATE tipo_estado_proyecto SET descripcion = 'Pruebas' WHERE id = 4;
UPDATE tipo_estado_proyecto SET descripcion = 'Cerrado' WHERE id = 5;
UPDATE tipo_estado_proyecto SET descripcion = 'Cancelado' WHERE id = 6;

-- Actualización de los tipos de estado de tareas
UPDATE tipo_estado_tarea SET descripcion = 'Nuevo' WHERE id = 1;
UPDATE tipo_estado_tarea SET descripcion = 'Abierto' WHERE id = 2;
UPDATE tipo_estado_tarea SET descripcion = 'Desarrollo' WHERE id = 3;
UPDATE tipo_estado_tarea SET descripcion = 'Pruebas' WHERE id = 4;
UPDATE tipo_estado_tarea SET descripcion = 'Cerrado' WHERE id = 5;
UPDATE tipo_estado_tarea SET descripcion = 'Cancelado' WHERE id = 6;
