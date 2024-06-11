--
-- En esta tabla se definira la configuración del correo por defecto para notificar a los asignados de proyectos y tareas
--
-- Fecha del archivo: 11-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 11-06-2024 https://github.com/multicodecl
--
-- correo, Guarda el correo por defecto a usar
-- password_hash, Guarda la contraseña por defecto a usar encriptada
-- nombre_servidor_email, Guarda el nombre del servidor de correo por defecto a usar
-- numero_puerto_smtp, Guarda el puerto por defecto a usar / 993, 995, 587, otros
-- usa_smtp, Guarda el protocolo a ocupar por defecto a usar
-- encriptacion_smtp, Guarda si hay encriptación smtp por defecto a usar
-- modo_depuracion, Guarda si hay modo de depuración por defecto a usar
-- desabilitado_actual, Guarda si la configuración actual esta activa o no
--
-- Defecto: Ninguno
--

CREATE TABLE config_correo_general (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	correo VARCHAR(255) NOT NULL,
	password_hash TEXT NOT NULL,
	nombre_servidor_email VARCHAR(255) NOT NULL,
	numero_puerto_smtp VARCHAR(15) NOT NULL,
	
	usa_smtp TINYINT(1) NOT NULL DEFAULT 0,
	encriptacion_smtp TINYINT(1) NOT NULL DEFAULT 0,
	modo_depuracion TINYINT(1) NOT NULL DEFAULT 0,
	
	desabilitado_actual TINYINT(1) NOT NULL DEFAULT 0,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);
