--
-- En esta tabla se definiran los datos de los usuarios del sistema
--
-- Fecha del archivo: 07-06-2023
-- Creado por: https://github.com/multicodecl
--
-- Actualizado por: 
-- 07-06-2023 https://github.com/multicodecl
--
-- id_username, Guarda el nombre de usuario para ingresar al sistema
-- password_hash, Guarda la contraseña encriptada
-- nombres, Guarda el/los nombre del usuario actual
-- apellidos, Guarda el/los apellido deñ usuario actual
-- fecha_nacimiento, Guarda la fecha de nacimiento del usuario
-- sexo, Guarda el genero al que pertenece el usuario 
-- imagen_path, Guarda la ruta de su foto de perfil
-- imagen_extension, Guarda la extension de la foto de perfil
-- email, Guarda el email del usuario al cual se le va a notificar de las asignaciones
-- idioma_defecto, Guarda el idioma por defecto del sistema
-- fk_id_tip_usu, Guarda el id del grupo de usuarios al que pertenece
--
-- Defecto: Ninguno
--

CREATE TABLE usuarios (
	id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
	updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
	
	id_username VARCHAR(255) NOT NULL UNIQUE,
	password_hash TEXT NOT NULL,
	nombres VARCHAR(255) NOT NULL,
	apellidos VARCHAR(255) NULL,
	fecha_nacimiento VARCHAR(20) NULL,
	sexo ENUM('MASCULINO', 'FEMENINO', 'INDEFINIDO') NOT NULL DEFAULT 'INDEFINIDO',
	imagen_path TEXT NULL,
	imagen_extension VARCHAR(50) NULL,

	email VARCHAR(255) NOT NULL UNIQUE,
	idioma_defecto VARCHAR(255) NOT NULL DEFAULT 'spanish',
	
	fk_id_tip_usu SMALLINT(6) NOT NULL,
	
	activo TINYINT(1) NOT NULL DEFAULT 1
);

ALTER TABLE usuarios
	ADD CONSTRAINT fk_usuarios_tipo_usuarios FOREIGN KEY (fk_id_tip_usu) REFERENCES tipo_usuarios (id);
