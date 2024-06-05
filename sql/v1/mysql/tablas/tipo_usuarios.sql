--
-- En esta tabla se definiran los grupos de usuarios
--
-- Fecha del archivo: 29-05-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 29-05-2024 https://github.com/multicodecl
--
-- descripcion          Guarda la descripción del tipo usuario
-- es_predeterminado    Define si es predeterminado el grupo para los usuarios nuevos
-- ldap_defecto         Define si acceder a la información que está almacenada de forma centralizada en una red
-- numero_orden         Define en que orden se mostraran los grupos
-- activo               Guarda si el item fue eliminado de la base de datos
--
-- Defecto: Super Administrador, Administrador General, Desarrollador, Testing QA, Cliente, Analista Funcional
--          Diseñador UX/UI, Arquitecto de Software, Ingeniero de Calidad, Ingeniero de DevOps
--
-- Notas: 
--

CREATE TABLE tipo_usuarios (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	descripcion VARCHAR(255) NOT NULL,
	
	es_predeterminado TINYINT(1) NOT NULL DEFAULT 0,
	ldap_defecto TINYINT(1) NOT NULL DEFAULT 0,
	numero_orden TINYINT(1) NOT NULL DEFAULT 0,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);
