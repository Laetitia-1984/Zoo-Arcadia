-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
CREATE TABLE `User` (
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `firstname` VARCHAR(50) NOT NULL,
    `role` INT NOT NULL,
    `rapport_veto` INT NOT NULL,
    PRIMARY KEY (`username`)
);
CREATE TABLE `Role` (
    `role_id` INT NOT NULL,
    `label` VARCHAR(560) NOT NULL,
    PRIMARY KEY (`role_id`)
);
CREATE TABLE `Rapport_veterinaire` (
    `rapport_id` INT NOT NULL,
    `food` VARCHAR(50) NOT NULL,
    `foodweight` INT NOT NULL,
    `date` DATE NOT NULL,
    `detail` VARCHAR(50) NOT NULL,
    `animal` INT NOT NULL,
    PRIMARY KEY (`rapport_id`)
);
CREATE TABLE `Animal` (
    `animal_id` INT NOT NULL,
    `firstname` VARCHAR(50) NOT NULL,
    `state` VARCHAR(50) NOT NULL,
    `race` INT NOT NULL,
    `house` INT NOT NULL,
    PRIMARY KEY (`animal_id`)
);
CREATE TABLE `Race` (
    `race_id` INT NOT NULL,
    `label` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`race_id`)
);
CREATE TABLE `PictureAnimal` (
    `picture_a_id` INT NOT NULL,
    `picture_a_name` VARCHAR(50) NOT NULL,
    `animal` INT NOT NULL,
    PRIMARY KEY (`picture_a_id`)
);
CREATE TABLE `House` (
    `house_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(50) NOT NULL,
    `comment_house` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`house_id`)
);
CREATE TABLE `Picture_House` (
    `pictureHouse_id` INT NOT NULL,
    `pictureHouse_name` VARCHAR(50) NOT NULL,
    `house` INT NOT NULL,
    PRIMARY KEY (`pictureHouse_id`)
);
CREATE TABLE `Service` (
    `service_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `description` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`service_id`)
);
CREATE TABLE `Opinion` (
    `opinion_id` INT NOT NULL,
    `pseudo` VARCHAR(50) NOT NULL,
    `comment` VARCHAR(50) NOT NULL,
    `isVisible` bool NOT NULL,
    PRIMARY KEY (`opinion_id`)
);
ALTER TABLE `User`
ADD CONSTRAINT `fk_User_role` FOREIGN KEY(`role`) REFERENCES `Role` (`role_id`);
ALTER TABLE `User`
ADD CONSTRAINT `fk_User_rapport_veto` FOREIGN KEY(`rapport_veto`) REFERENCES `Rapport_veterinaire` (`rapport_id`);
ALTER TABLE `Rapport_veterinaire`
ADD CONSTRAINT `fk_Rapport_veterinaire_animal` FOREIGN KEY(`animal`) REFERENCES `Animal` (`animal_id`);
ALTER TABLE `Animal`
ADD CONSTRAINT `fk_Animal_race` FOREIGN KEY(`race`) REFERENCES `Race` (`race_id`);
ALTER TABLE `Animal`
ADD CONSTRAINT `fk_Animal_house` FOREIGN KEY(`house`) REFERENCES `House` (`house_id`);
ALTER TABLE `PictureAnimal`
ADD CONSTRAINT `fk_PictureAnimal_animal` FOREIGN KEY(`animal`) REFERENCES `Animal` (`animal_id`);
ALTER TABLE `Picture_House`
ADD CONSTRAINT `fk_Picture_House_house` FOREIGN KEY(`house`) REFERENCES `House` (`house_id`);