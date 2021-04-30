-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema thewall
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema thewall
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `thewall` DEFAULT CHARACTER SET utf8 ;
USE `thewall` ;

-- -----------------------------------------------------
-- Table `thewall`.`bricks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `thewall`.`bricks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `thewall`.`bricks`
-- -----------------------------------------------------
START TRANSACTION;
USE `thewall`;
INSERT INTO `thewall`.`bricks` (`id`, `content`) VALUES (1, 'There was a young lady of Norway');
INSERT INTO `thewall`.`bricks` (`id`, `content`) VALUES (2, 'Who hung by her toes in a doorway');
INSERT INTO `thewall`.`bricks` (`id`, `content`) VALUES (3, 'She said to her beau');
INSERT INTO `thewall`.`bricks` (`id`, `content`) VALUES (4, 'Just look at me Joe');
INSERT INTO `thewall`.`bricks` (`id`, `content`) VALUES (5, 'I think I’ve discovered one more way');

COMMIT;

