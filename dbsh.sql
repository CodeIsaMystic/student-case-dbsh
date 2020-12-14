-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
	`user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_email` VARCHAR(100) NOT NULL,
	`user_password` VARCHAR(255) NOT NULL,
	`user_valid` TINYINT NOT NULL DEFAULT 1,
	`user_role` VARCHAR(45) NULL,
	PRIMARY KEY (`use_id`),
);


-- -----------------------------------------------------
-- Table `contacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `contacts` (
	`cont_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`cont_lastname` VARCHAR(45) NOT NULL,
    `cont_firstname` VARCHAR(45) NOT NULL,
	`cont_email` VARCHAR(100) NOT NULL,
    `cont_message` VARCHAR(255),
    `cont_newsletter` BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (`cont_id`),
    
    
    -- ---------------------------
    -- To check
    -- ---------------------------


    INDEX `fk_article_user1_idx` (`art_author` ASC),
    INDEX `fk_article_categorie1_idx` (`art_categorie` ASC),
    CONSTRAINT `fk_article_user1`
        FOREIGN KEY (`art_author`)
        REFERENCES `user` (`use_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `fk_article_categorie1`
        FOREIGN KEY (`art_categorie`)
        REFERENCES `categorie` (`cat_id`)
        ON DELETE NO ACTION ON UPDATE NO ACTION

);





-- -----------------------------------------------------
-- Table `testimonialsCards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testimCards` (
  `tcd_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tcd_title` VARCHAR(45) NOT NULL,
  `tcd_pseudo` VARCHAR (100) NOT NULL,  
  `tcd_picture` VARCHAR(100) NULL,
  `tcd_published` BOOLEAN NOT NULL DEFAULT 0,
  
  
  `cont_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,  
 
  PRIMARY KEY (`tcd_id`),
 
 
    -- ---------------------------
    -- To check
    -- ---------------------------
 
 
  INDEX `fk_article_user1_idx` (`art_author` ASC),
  INDEX `fk_article_categorie1_idx` (`art_categorie` ASC),
  CONSTRAINT `fk_article_user1`
    FOREIGN KEY (`art_author`)
    REFERENCES `user` (`use_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_categorie1`
    FOREIGN KEY (`art_categorie`)
    REFERENCES `categorie` (`cat_id`)
    ON DELETE NO ACTION ON UPDATE NO ACTION
);

















