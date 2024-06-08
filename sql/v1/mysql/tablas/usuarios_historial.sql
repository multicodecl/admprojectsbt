--
-- En esta tabla se definira el historial de los usuarios actuales
--
-- Fecha del archivo: 08-08-2024
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 08-08-2024 https://github.com/multicodecl
--
-- tipo, Guarda el tipo acceso del usuario / Acceso Completado
-- ip, Guarda la ip del servidor local de donde se conecta
-- id_username, Guarda el nombre de usuario que ingreso al sistema
-- email, Guarda el email del usuario
-- fk_id_tip_usu, Guarda el id del tipo de usuarios al que pertenece
-- fk_id_usu, Guarda el id del usuario
-- limpiado_admin, Guarda estado a visto por el admin, limpiado para no volver a mostrar
--
-- Defecto: Ninguno
--

CREATE TABLE usuarios_historial (
	id SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	tipo TEXT NOT NULL,
	ip VARCHAR(50) NOT NULL DEFAULT '::1',
	id_username VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	
	fk_id_tip_usu SMALLINT(6) NOT NULL,
	fk_id_usu INT(11) NOT NULL,
	
	limpiado_admin TINYINT(1) NOT NULL DEFAULT 1,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);

ALTER TABLE usuarios_historial
	ADD CONSTRAINT fk_usuarios_historial_tipo_usuarios FOREIGN KEY (fk_id_tip_usu) REFERENCES tipo_usuarios (id);
ALTER TABLE usuarios_historial
	ADD CONSTRAINT fk_usuarios_historial_usuarios FOREIGN KEY (fk_id_usu) REFERENCES usuarios (id);

ALTER TABLE usuarios_historial ADD INDEX(tipo);
ALTER TABLE usuarios_historial ADD INDEX(email);
