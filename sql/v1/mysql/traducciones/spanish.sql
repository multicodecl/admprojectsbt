--
-- En este documento se definiran los datos predeterminado en Español
--
-- Fecha del archivo: 21-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 21-05-2024 https://github.com/multicodecl
--
--

-- Actualización de la configuración de modulos
UPDATE config_modulos
    SET nombre = 'Configuración de Correo',
        descripcion = 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 1;

UPDATE config_modulos
    SET nombre = 'Configuración de Plataforma',
        descripcion = 'En esta tabla se definirá la configuración general de la plataforma en su versión actual',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 2;

UPDATE config_modulos
    SET nombre = 'Usuarios',
        descripcion = 'En esta tabla se definirán los datos de los usuarios del sistema',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 3;

UPDATE config_modulos
    SET nombre = 'Proyectos',
        descripcion = 'En esta tabla se definirán los proyectos a desarrollar en la organización',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 4;

UPDATE config_modulos
    SET nombre = 'Tareas',
        descripcion = 'En esta tabla se definirán las tareas de los proyectos actuales',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 5;

UPDATE config_modulos
    SET nombre = 'Comentarios de Proyectos',
        descripcion = 'En esta tabla se definirán los comentarios de los proyectos actuales',
        modulo_activo = 0, referencia_previa = '4', activo = 1
WHERE id = 6;

UPDATE config_modulos
    SET nombre = 'Comentarios de Tareas',
        descripcion = 'En esta tabla se definirán los comentarios de las tareas actuales',
        modulo_activo = 0, referencia_previa = '5', activo = 1
WHERE id = 7;

UPDATE config_modulos
    SET nombre = 'Clientes',
        descripcion = 'En esta tabla se definirán los clientes actuales',
        modulo_activo = 0, referencia_previa = '3', activo = 1
WHERE id = 8;

UPDATE config_modulos
    SET nombre = 'Calendario',
        descripcion = 'En esta tabla se definirán reuniones entre otros',
        modulo_activo = 0, referencia_previa = '3', activo = 1
WHERE id = 9;
