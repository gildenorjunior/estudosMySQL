CREATE TABLE `Postagens` (
	`id_Post` INT NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL AUTO_INCREMENT,
	`fk_tema` INT NOT NULL AUTO_INCREMENT,
	`data_conclusao` DATE NOT NULL,
	`data_postagem` DATE NOT NULL,
	`fk_usuarios` INT NOT NULL,
	PRIMARY KEY (`id_Post`)
);

CREATE TABLE `Temas` (
	`id_Tema` INT NOT NULL AUTO_INCREMENT,
	`categoria_ajuda` varchar(20) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_Tema`)
);

CREATE TABLE `Usuarios` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(50) NOT NULL,
	`senha` varchar(10) NOT NULL UNIQUE,
	`categoria_usuario` BOOLEAN NOT NULL,
	`email` varchar(20) NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`fk_tema`) REFERENCES `Temas`(`id_Tema`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`fk_usuarios`) REFERENCES `Usuarios`(`id_usuario`);