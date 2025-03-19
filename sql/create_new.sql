SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema restaurants_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `restaurants_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `restaurants_db` ;


CREATE TABLE `locations` (
  `locationID` int NOT NULL,
  `restaurantID` int NOT NULL,
  `longitude` float,
  `latitude` float,
  `zip_code` varchar(20),
  PRIMARY KEY (`locationID`),

CONSTRAINT `restaurant_id_fk` FOREIGN KEY (`restaurantID`) REFERENCES `restaurants_db`.`restaurant`(`restaurantID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `restaurant` (
  `restaurantID` int NOT NULL,
  `name` varchar(90),
  `rating` float,
  `score` float,
  `price_range` varchar(50),
  PRIMARY KEY (`restaurantID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `menus` (
  `menuID` int NOT NULL,
  `name` varchar(20),
  `price` float,
  PRIMARY KEY (`menuID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `categories` (
  `menuID` int NOT NULL,
  `categoryID` int NOT NULL,
  PRIMARY KEY (`categoryID`),
  CONSTRAINT `menu_id_fk` FOREIGN KEY (`menuID`) REFERENCES `restaurants_db`.`menus`(`menuID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `cuisine` (
  `cuisineID` int NOT NULL,
  `type` varchar(20),
  PRIMARY KEY (`cuisineID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `restaurant_menus` (
  `ID` int NOT NULL,
  `restaurantID` int NOT NULL,
  `menuID` int NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `restaurant2_id_fk` FOREIGN KEY (`restaurantID`) REFERENCES `restaurants_db`.`restaurant`(`restaurantID`),
  CONSTRAINT `restaurant_menu_id_fk` FOREIGN KEY (`restaurantID`) REFERENCES `restaurants_db`.`menus`(`menuID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `restaurant_cuisine` (
  `ID` int NOT NULL,
  `restaurantID` int NOT NULL,
  `cuisineID` int NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `restaurant3_id_fk` FOREIGN KEY (`restaurantID`) REFERENCES `restaurants_db`.`restaurant`(`restaurantID`),
  CONSTRAINT `cuisineid_fk` FOREIGN KEY (`cuisineID`) REFERENCES `restaurants_db`.`cuisine`(`cuisineID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

CREATE TABLE `menu_categories` (
  `ID` int NOT NULL,
  `menuID` int NOT NULL,
  `categoryID` int NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `menu3_id_fk` FOREIGN KEY (`menuID`) REFERENCES `restaurants_db`.`menus`(`menuID`),
  CONSTRAINT `category1_id_fk` FOREIGN KEY (`categoryID`) REFERENCES `restaurants_db`.`categories`(`categoryID`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
