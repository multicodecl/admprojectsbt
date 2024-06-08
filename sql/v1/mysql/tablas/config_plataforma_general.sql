--
-- En esta tabla se definira la configuración general de la plataforma en su version actual
--
-- Fecha del archivo: 06-06-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 07-06-2024 https://github.com/multicodecl
--
-- version_web, Guarda la version actual del proyecto en producción
-- titulo_plataforma, Guarda el titulo de la plataforma
-- abreviatura_plataforma, Guarda una abreviatura para plataforma (modificable)
-- logo_base64, Guarda el logo en base64 para carga rápida
-- url_logo, Guarda el link de la ubicación del logo
-- favicon32, Guarda el favicon del la plataforma
-- texto_copyright, Guarda el copyright de la plataforma (no mofificable)
-- idioma_defecto, Guarda el idioma a ocupar por defecto en la plataforma
-- theme_defecto, Guarda el theme por defecto si es definido uno
-- zona_horaria, Guarda la zona horaria de la persona que ocupe la plataforma
-- filas_paginas, Guarda cuantas filas debe mostrar las tablas
-- formato_fecha, Guarda el formato de la fecha estándar
-- formato_fecha_hora, Guarda el formato de la fecha estándar completa
-- primer_dia_semana, Guarda el primer dia de la semana por defecto de la plataforma
-- integrado_por, Guarda una referencia de la integración de la plataforma
-- actualizaciones, Guarda si desea recibir una alerta de actualización si se encuentra disponible
-- charset_html, Guarda el charset utilizado en la plataforma por defecto
-- lang_html, Guarda el lang etiqueta html definido de la plataforma
-- enviar_notificacion_email, Guarda si se envia informacion de la tarea o proyecto asignado
--
-- Defecto: 1, 1.0, ADMProjectsBT, ADMProjectsBT, NULL, NULL, NULL, Copyright ADMProjectsBT. All Right Reserved, spanish, NULL,
-- 			America/Santiago, 10, m/d/Y, m/d/Y H:i:s, Lunes, Ingegrado por MultiCode, 1, 1
--

CREATE TABLE config_plataforma_general (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	version_web VARCHAR(255) NOT NULL,
	titulo_plataforma VARCHAR(255) NOT NULL,
	abreviatura_plataforma VARCHAR(255) NOT NULL,
	logo_base64 TEXT NULL,
	url_logo TEXT NULL,
	favicon32 TEXT NULL,
	texto_copyright VARCHAR(255) NOT NULL,
	idioma_defecto VARCHAR(255) NOT NULL,
	theme_defecto TEXT NOT NULL,
	zona_horaria VARCHAR(255) NOT NULL,
	filas_paginas VARCHAR(10) NOT NULL,
	formato_fecha VARCHAR(50) NOT NULL,
	formato_fecha_hora VARCHAR(100) NOT NULL,
	primer_dia_semana VARCHAR(50) NOT NULL,
	integrado_por VARCHAR(255) NOT NULL,
	
	actualizaciones TINYINT(1) NOT NULL DEFAULT 1,
	
	charset_html VARCHAR(255) NOT NULL,
	
	lang_html VARCHAR(100) NOT NULL,

	enviar_notificacion_email TINYINT(1) NOT NULL DEFAULT 0,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);
