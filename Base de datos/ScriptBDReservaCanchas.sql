-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ReservaDeCanchas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ReservaDeCanchas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ReservaDeCanchas` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
USE `ReservaDeCanchas` ;

-- -----------------------------------------------------
-- Table `ReservaDeCanchas`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ReservaDeCanchas`.`Usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `clave` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ReservaDeCanchas`.`Canchas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ReservaDeCanchas`.`Canchas` (
  `idCancha` INT NOT NULL AUTO_INCREMENT,
  `tipoCancha` VARCHAR(30) NOT NULL,
  `precio` DECIMAL NOT NULL,
  PRIMARY KEY (`idCancha`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ReservaDeCanchas`.`Reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ReservaDeCanchas`.`Reservas` (
  `idReserva` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `hora` TIME NOT NULL,
  `totalReserva` DECIMAL NOT NULL,
  `idUsuario` INT NOT NULL,
  `idCancha` INT NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `idUsuario_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `idCancha_idx` (`idCancha` ASC) VISIBLE,
  CONSTRAINT `idUsuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `ReservaDeCanchas`.`Usuarios` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCancha`
    FOREIGN KEY (`idCancha`)
    REFERENCES `ReservaDeCanchas`.`Canchas` (`idCancha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ReservaDeCanchas`.`MetadataCanchas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ReservaDeCanchas`.`MetadataCanchas` (
  `idMetadata` INT NOT NULL AUTO_INCREMENT,
  `valor` VARCHAR(55) NOT NULL,
  `clave` VARCHAR(30) NOT NULL,
  `idCancha` INT NULL,
  PRIMARY KEY (`idMetadata`),
  INDEX `idcanchafkmtdata_idx` (`idCancha` ASC) VISIBLE,
  CONSTRAINT `idcanchafkmtdata`
    FOREIGN KEY (`idCancha`)
    REFERENCES `ReservaDeCanchas`.`Canchas` (`idCancha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
