--
-- This document will define the default data in English
--
-- File date: 21-05-2024
-- Created by: https://github.com/multicodecl
--
-- Updated by: 
-- 21-05-2024 https://github.com/multicodecl
--
--

-- Module configuration update
UPDATE config_modulos
    SET nombre = 'Mail Settings',
        descripcion = 'This table will define the default email configuration to notify project and task assignees.',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 1;

UPDATE config_modulos
    SET nombre = 'Platform Configuration',
        descripcion = 'This table will define the general configuration of the platform in its current version',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 2;

UPDATE config_modulos
    SET nombre = 'Users',
        descripcion = 'This table will define the data of the system users',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 3;

UPDATE config_modulos
    SET nombre = 'Projects',
        descripcion = 'This table will define the projects to be developed in the organization',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 4;

UPDATE config_modulos
    SET nombre = 'Tasks',
        descripcion = 'This table will define the tasks of the current projects',
        modulo_activo = 0, referencia_previa = NULL, activo = 1
WHERE id = 5;

UPDATE config_modulos
    SET nombre = 'Project Comments',
        descripcion = 'This table will define the comments of the current projects',
        modulo_activo = 0, referencia_previa = '4', activo = 1
WHERE id = 6;

UPDATE config_modulos
    SET nombre = 'Task Comments',
        descripcion = 'This table will define the comments of the current tasks',
        modulo_activo = 0, referencia_previa = '5', activo = 1
WHERE id = 7;

UPDATE config_modulos
    SET nombre = 'Clients',
        descripcion = 'This table will define the current clients',
        modulo_activo = 0, referencia_previa = '3', activo = 1
WHERE id = 8;

UPDATE config_modulos
    SET nombre = 'Calendar',
        descripcion = 'This table will define meetings among other things',
        modulo_activo = 0, referencia_previa = '3', activo = 1
WHERE id = 9;

