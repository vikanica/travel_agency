-- MySQL Script generated by MySQL Workbench

-- Thu Feb  1 22:03:48 2018

-- Model: New Model    Version: 1.0

-- MySQL Workbench Forward Engineering



SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';



-- -----------------------------------------------------

-- Schema main

-- -----------------------------------------------------



-- -----------------------------------------------------

-- Schema main

-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `main` DEFAULT CHARACTER SET utf8 ;

USE `main` ;



-- -----------------------------------------------------

-- Table `main`.`places`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `main`.`places` (

  `id` INT NOT NULL AUTO_INCREMENT,

  `name` VARCHAR(45) NULL,

  PRIMARY KEY (`id`))

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `main`.`records`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `main`.`records` (

  `id` INT NOT NULL AUTO_INCREMENT,

  `name` VARCHAR(45) NULL,

  `surname` VARCHAR(45) NULL,

  `phone_number` INT NULL,

  `e_mail` VARCHAR(45) NULL,

  `departure_date` DATETIME NULL,

  `arrival_date` DATETIME NULL,

  `places_id` INT NOT NULL,

  PRIMARY KEY (`id`),

  INDEX `fk_records_places_idx` (`places_id` ASC),

  CONSTRAINT `fk_records_places`

    FOREIGN KEY (`places_id`)

    REFERENCES `main`.`places` (`id`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;