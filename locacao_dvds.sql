-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema locacao_dvds
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema locacao_dvds
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `locacao_dvds` DEFAULT CHARACTER SET utf8mb4 ;
USE `locacao_dvds` ;

-- -----------------------------------------------------
-- Table `locacao_dvds`.`atores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locacao_dvds`.`atores` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `dataDeEstreia` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  UNIQUE INDEX `sobrenome_UNIQUE` (`sobrenome` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `locacao_dvds`.`classificacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locacao_dvds`.`classificacao` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `locacao_dvds`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locacao_dvds`.`genero` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `genero` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `locacao_dvds`.`dvd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `locacao_dvds`.`dvd` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(120) NOT NULL,
  `anoDeLancamento` INT(4) NOT NULL,
  `atorPrincipal_id` INT(11) NOT NULL,
  `atorCoadjuvante_id` INT(11) NOT NULL,
  `genero_id` INT(11) NOT NULL,
  `classificacao_id` INT(11) NOT NULL,
  `dataDeLancamento` DATE NOT NULL,
  `duracao` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `titulo_UNIQUE` (`titulo` ASC) VISIBLE,
  INDEX `fk_atorCoadjuvante_idx` (`atorCoadjuvante_id` ASC) VISIBLE,
  INDEX `fk_atorPrincipal_idx` (`atorPrincipal_id` ASC) VISIBLE,
  INDEX `fk_genero_idx` (`genero_id` ASC) VISIBLE,
  INDEX `fk_classificacao_idx` (`classificacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_atorCoadjuvante`
    FOREIGN KEY (`atorCoadjuvante_id`)
    REFERENCES `locacao_dvds`.`atores` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_atorPrincipal`
    FOREIGN KEY (`atorPrincipal_id`)
    REFERENCES `locacao_dvds`.`atores` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_classificacao`
    FOREIGN KEY (`classificacao_id`)
    REFERENCES `locacao_dvds`.`classificacao` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_genero`
    FOREIGN KEY (`genero_id`)
    REFERENCES `locacao_dvds`.`genero` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
