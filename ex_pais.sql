CREATE DATABASE EX_PAIS;

USE EX_PAIS;

CREATE TABLE IF NOT EXISTS ex_pais.paises(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    populacao BIGINT NOT NULL,
    area DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE usuario (
username VARCHAR(100) NOT NULL,
password VARCHAR(100) NOT NULL,
PRIMARY KEY (username))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


insert into usuario values ('italost', 321);