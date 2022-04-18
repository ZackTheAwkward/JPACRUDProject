-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema brewerydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `brewerydb` ;

-- -----------------------------------------------------
-- Schema brewerydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `brewerydb` DEFAULT CHARACTER SET utf8 ;
USE `brewerydb` ;

-- -----------------------------------------------------
-- Table `brewery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `brewery` ;

CREATE TABLE IF NOT EXISTS `brewery` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `url` VARCHAR(500) NULL,
  `latitude` DOUBLE NULL,
  `longitude` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS brewery@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'brewery'@'localhost' IDENTIFIED BY 'brewery';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'brewery'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `brewery`
-- -----------------------------------------------------
START TRANSACTION;
USE `brewerydb`;
INSERT INTO `brewery` (`id`, `name`, `city`, `state`, `url`, `latitude`, `longitude`) VALUES (1, 'Spice Trade Brewing', 'Greenwood Village', 'Colorado', 'https://spicetradebrewing.com/', 39.610052, -104.887758);
INSERT INTO `brewery` (`id`, `name`, `city`, `state`, `url`, `latitude`, `longitude`) VALUES (2, 'Lone Tree Brewing Company', 'Lone Tree', 'Colorado', 'https://www.lonetreebrewingco.com/beer/on-tap-in-the-tasting-room/', 39.562473, -104.892979);
INSERT INTO `brewery` (`id`, `name`, `city`, `state`, `url`, `latitude`, `longitude`) VALUES (3, 'Copper Kettle Brewing Company', 'Denver', 'Colorado', 'https://www.copperkettledenver.com/', 39.696729, -104.891656);
INSERT INTO `brewery` (`id`, `name`, `city`, `state`, `url`, `latitude`, `longitude`) VALUES (4, 'Left Hand Brewing Company', 'Longmont', 'Colorado', 'https://lefthandbrewing.com/brewery/on-tap', 40.158688, -105.11684);
INSERT INTO `brewery` (`id`, `name`, `city`, `state`, `url`, `latitude`, `longitude`) VALUES (5, 'Rails End Beer Company', 'Broomfield', 'Colorado', 'https://railsendbeerco.com/', 39.908488, -105.07503);

COMMIT;

