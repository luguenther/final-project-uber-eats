-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema restaurants_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema restaurants_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `restaurants_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `restaurants_db` ;

-- -----------------------------------------------------
-- Table `restaurants_db`.`restaurants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurants_db`.`restaurants` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `score` FLOAT NULL DEFAULT NULL,
  `ratings` INT NULL DEFAULT NULL,
  `price_range` VARCHAR(50) NULL DEFAULT NULL,
  `full_address` TEXT NULL DEFAULT NULL,
  `zip_code` VARCHAR(20) NULL DEFAULT NULL,
  `lat` DOUBLE NULL DEFAULT NULL,
  `longitude` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `restaurants_db`.`restaurant_cuisines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurants_db`.`restaurant_cuisines` (
  `restaurant_id` INT NULL DEFAULT NULL,
  `cuisine_type` VARCHAR(100) NULL DEFAULT NULL,
  INDEX `restaurant_cuisines_ibfk_1` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_cuisines_ibfk_1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `restaurants_db`.`restaurants` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `restaurants_db`.`restaurant_menus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `restaurants_db`.`restaurant_menus` (
  `restaurant_id` INT NULL DEFAULT NULL,
  `category` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  INDEX `restaurant_menus_ibfk_1` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_menus_ibfk_1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `restaurants_db`.`restaurants` (`id`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
