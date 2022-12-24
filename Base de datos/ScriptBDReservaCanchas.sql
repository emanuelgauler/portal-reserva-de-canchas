-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema reservadecanchas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema reservadecanchas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reservadecanchas` ;
USE `reservadecanchas` ;

-- -----------------------------------------------------
-- Table `reservadecanchas`.`canchas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reservadecanchas`.`canchas` (
  `idCancha` INT NOT NULL AUTO_INCREMENT,
  `tipoCancha` VARCHAR(30) COLLATE 'utf8mb3_spanish2_ci' NOT NULL,
  `cantidadPorEquipo` VARCHAR(10) COLLATE 'utf8mb3_spanish2_ci' NULL DEFAULT NULL,
  `precio` DECIMAL(10,0) NOT NULL,
  `type` VARCHAR(25) COLLATE 'utf8mb3_spanish2_ci' NULL DEFAULT NULL,
  `imagenes` VARCHAR(500) COLLATE 'utf8mb3_spanish2_ci' NULL DEFAULT NULL,
  `suelo` VARCHAR(45) COLLATE 'utf8mb3_spanish2_ci' NULL DEFAULT NULL,
  `medidas` VARCHAR(45) COLLATE 'utf8mb3_spanish2_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`idCancha`))
ENGINE = InnoDB
AUTO_INCREMENT = 7;


-- -----------------------------------------------------
-- Table `reservadecanchas`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reservadecanchas`.`usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) COLLATE 'utf8mb3_spanish2_ci' NOT NULL,
  `apellido` VARCHAR(30) COLLATE 'utf8mb3_spanish2_ci' NOT NULL,
  `email` VARCHAR(30) COLLATE 'utf8mb3_spanish2_ci' NOT NULL,
  `clave` VARCHAR(30) COLLATE 'utf8mb3_spanish2_ci' NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 2;


-- -----------------------------------------------------
-- Table `reservadecanchas`.`reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reservadecanchas`.`reservas` (
  `idReserva` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `hora` TIME NOT NULL,
  `totalReserva` DECIMAL(10,0) NOT NULL,
  `idUsuario` INT NOT NULL,
  `idCancha` INT NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `idUsuario_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `idCancha_idx` (`idCancha` ASC) VISIBLE,
  CONSTRAINT `idCancha`
    FOREIGN KEY (`idCancha`)
    REFERENCES `reservadecanchas`.`canchas` (`idCancha`),
  CONSTRAINT `idUsuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `reservadecanchas`.`usuarios` (`idUsuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
