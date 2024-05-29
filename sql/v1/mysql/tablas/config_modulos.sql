--
-- En esta tabla se definira la configuración de los modulos por defecto
--
-- Fecha del archivo: 21-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 29-05-2024 https://github.com/multicodecl
--
-- nombre               Guarda el nombre del modulo por defecto a usar
-- descripcion          Guarda la descripcion por defecto a usar
-- modulo_activo        Guarda si el modulo esta activo o no
-- referencia_previa    Guarda id de los modulos necesariamente activados Ej: 1,3,4
-- activo               Guarda si el item fue eliminado de la base de datos
--
-- Defecto: Configuración de Correo, Configuración de Plataforma, Usuarios, Proyectos, Tareas,
--          Comentarios de Proyectos, Comentarios de Tareas, Clientes, Calendario
--
-- Notas: Los modulos deben activarse
--

CREATE TABLE config_modulos (
    id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
    
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    
    modulo_activo TINYINT(1) NOT NULL DEFAULT 0,
    referencia_previa TEXT NULL DEFAULT NULL,
    
    activo TINYINT(1) NOT NULL DEFAULT 1
);
