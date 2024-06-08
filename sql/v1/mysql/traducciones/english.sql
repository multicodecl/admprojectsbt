--
-- This document will define the default data in English
--
-- File date: 21-05-2024
-- Created by: https://github.com/multicodecl
--
-- Updated by: 
-- 07-06-2024 https://github.com/multicodecl
--

-- Module configuration update
UPDATE config_modulos
    SET nombre = 'Mail Settings',
        descripcion = 'This table will define the default email configuration to notify project and task assignees.'
WHERE id = 1;

UPDATE config_modulos
    SET nombre = 'Platform Configuration',
        descripcion = 'This table will define the general configuration of the platform in its current version'
WHERE id = 2;

UPDATE config_modulos
    SET nombre = 'Users',
        descripcion = 'This table will define the data of the system users'
WHERE id = 3;

UPDATE config_modulos
    SET nombre = 'Projects',
        descripcion = 'This table will define the projects to be developed in the organization'
WHERE id = 4;

UPDATE config_modulos
    SET nombre = 'Tasks',
        descripcion = 'This table will define the tasks of the current projects'
WHERE id = 5;

UPDATE config_modulos
    SET nombre = 'Project Comments',
        descripcion = 'This table will define the comments of the current projects'
WHERE id = 6;

UPDATE config_modulos
    SET nombre = 'Task Comments',
        descripcion = 'This table will define the comments of the current tasks'
WHERE id = 7;

UPDATE config_modulos
    SET nombre = 'Clients',
        descripcion = 'This table will define the current clients'
WHERE id = 8;

UPDATE config_modulos
    SET nombre = 'Calendar',
        descripcion = 'This table will define meetings among other things'
WHERE id = 9;

-- Update of user types
UPDATE tipo_usuarios SET descripcion = 'Super Administrator' WHERE id = 1;
UPDATE tipo_usuarios SET descripcion = 'General Administrator' WHERE id = 2;
UPDATE tipo_usuarios SET descripcion = 'Developer' WHERE id = 3;
UPDATE tipo_usuarios SET descripcion = 'Testing QA' WHERE id = 4;
UPDATE tipo_usuarios SET descripcion = 'Client' WHERE id = 5;
UPDATE tipo_usuarios SET descripcion = 'Functional Analyst' WHERE id = 6;
UPDATE tipo_usuarios SET descripcion = 'UX/UI Designer' WHERE id = 7;
UPDATE tipo_usuarios SET descripcion = 'Software Architect' WHERE id = 8;
UPDATE tipo_usuarios SET descripcion = 'Quality Engineer' WHERE id = 9;
UPDATE tipo_usuarios SET descripcion = 'DevOps Engineer' WHERE id = 10;

-- Update project status types
UPDATE tipo_estado_proyecto SET descripcion = 'New' WHERE id = 1;
UPDATE tipo_estado_proyecto SET descripcion = 'Open' WHERE id = 2;
UPDATE tipo_estado_proyecto SET descripcion = 'In Progress' WHERE id = 3;
UPDATE tipo_estado_proyecto SET descripcion = 'Testing' WHERE id = 4;
UPDATE tipo_estado_proyecto SET descripcion = 'Closed' WHERE id = 5;
UPDATE tipo_estado_proyecto SET descripcion = 'Cancelled' WHERE id = 6;

-- Update task status types
UPDATE tipo_estado_tarea SET descripcion = 'New' WHERE id = 1;
UPDATE tipo_estado_tarea SET descripcion = 'Open' WHERE id = 2;
UPDATE tipo_estado_tarea SET descripcion = 'In Progress' WHERE id = 3;
UPDATE tipo_estado_tarea SET descripcion = 'Testing' WHERE id = 4;
UPDATE tipo_estado_tarea SET descripcion = 'Closed' WHERE id = 5;
UPDATE tipo_estado_tarea SET descripcion = 'Cancelled' WHERE id = 6;

-- Update project priority types
UPDATE tipo_prioridad_proyecto SET descripcion = 'Low' WHERE id = 1;
UPDATE tipo_prioridad_proyecto SET descripcion = 'Medium' WHERE id = 2;
UPDATE tipo_prioridad_proyecto SET descripcion = 'High' WHERE id = 3;
UPDATE tipo_prioridad_proyecto SET descripcion = 'Urgent' WHERE id = 4;

-- Update task priority types
UPDATE tipo_prioridad_tarea SET descripcion = 'Low' WHERE id = 1;
UPDATE tipo_prioridad_tarea SET descripcion = 'Medium' WHERE id = 2;
UPDATE tipo_prioridad_tarea SET descripcion = 'High' WHERE id = 3;
UPDATE tipo_prioridad_tarea SET descripcion = 'Urgent' WHERE id = 4;

-- Task types update
UPDATE tipo_tarea SET descripcion = 'Bug' WHERE id = 1;
UPDATE tipo_tarea SET descripcion = 'Change' WHERE id = 2;
UPDATE tipo_tarea SET descripcion = 'Development' WHERE id = 3;
UPDATE tipo_tarea SET descripcion = 'Idea' WHERE id = 4;
UPDATE tipo_tarea SET descripcion = 'Review' WHERE id = 5;
UPDATE tipo_tarea SET descripcion = 'Testing' WHERE id = 6;
UPDATE tipo_tarea SET descripcion = 'Optimization' WHERE id = 7;

-- Update general platform settings
UPDATE config_plataforma_general 
    SET idioma_defecto = 'english', zona_horaria = 'America/New_York', formato_fecha = 'm/d/Y',
        formato_fecha_hora = 'm/d/Y H:i:s', primer_dia_semana = 'Monday',
        integrado_por = 'Integrated by MultiCode', lang_html = 'en'
    WHERE id = 1;

-- Update the language of the users
ALTER TABLE usuarios CHANGE idioma_defecto idioma_defecto VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english';
