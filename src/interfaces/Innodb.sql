CREATE SCHEMA `sportswearshop1` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `sportswearshop1`.`product` (
                                           `id` BIGINT(20) NOT NULL,
                                           `name` VARCHAR(45) NOT NULL,
                                           `brand` VARCHAR(45) NOT NULL,
                                           `category_id` VARCHAR(45) NOT NULL,
                                           `price` DECIMAL(10) NULL,
                                           `color` VARCHAR(45) NULL,
                                           `size` VARCHAR(45) NULL,
                                           `description` VARCHAR(5000) NULL DEFAULT 'NULL',
                                           `image` LONGBLOB NULL DEFAULT NULL,
                                           PRIMARY KEY (`id`),
                                           UNIQUE INDEX `id_product_UNIQUE` (`id` ASC) VISIBLE);

CREATE TABLE `sportswearshop1`.`product_category` (
                                                    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                                    `name` VARCHAR(45) NOT NULL,
                                                    PRIMARY KEY (`id`),
                                                    UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

CREATE TABLE `sportswearshop1`.`user` (
                                        `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                        `login` VARCHAR(45) NOT NULL,
                                        `password` VARCHAR(45) NOT NULL,
                                        `roles` VARCHAR(45) NOT NULL,
                                        PRIMARY KEY (`id`),
                                        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
ALTER TABLE `sportswearshop1`.`user`
  ADD UNIQUE INDEX `login_UNIQUE` (`login` ASC) VISIBLE;
;


CREATE TABLE `sportswearshop1`.`role` (
                                        `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                        `name` VARCHAR(45) NOT NULL,
                                        `users` VARCHAR(45) NOT NULL,
                                        PRIMARY KEY (`id`),
                                        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

CREATE TABLE `sportswearshop1`.`order` (
                                         `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                         `sum` DECIMAL(10) NULL,
                                         `payment` BINARY(2) NOT NULL,
                                         PRIMARY KEY (`id`),
                                         UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
ALTER TABLE `sportswearshop1`.`order`
  CHANGE COLUMN `payment` `payment` BINARY(2) NOT NULL DEFAULT 0 ;

CREATE TABLE `sportswearshop1`.`office` (
                                          `firstname` VARCHAR(45) NOT NULL,
                                          `lastname` VARCHAR(45) NOT NULL,
                                          `country` VARCHAR(45) NOT NULL,
                                          `city` VARCHAR(45) NOT NULL,
                                          `email` VARCHAR(45) NULL,
                                          `phone` VARCHAR(45) NOT NULL,
                                          `user_id` VARCHAR(45) NOT NULL,
                                          `orders` VARCHAR(45) NULL,
                                          PRIMARY KEY (`user_id`));

CREATE TABLE `sportswearshop1`.`cart` (
                                        `id` BIGINT(10) NOT NULL AUTO_INCREMENT,
                                        `sum` DECIMAL(20) NULL,
                                        `products` VARCHAR(45) NULL,
                                        PRIMARY KEY (`id`),
                                        UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

ALTER TABLE `sportswearshop1`.`product`
  CHANGE COLUMN `category_id` `category_id` BIGINT(20) NOT NULL ,
  ADD INDEX `fk_category_idx` (`category_id` ASC) VISIBLE;
;
ALTER TABLE `sportswearshop1`.`product`
  ADD CONSTRAINT `fk_category`
    FOREIGN KEY (`category_id`)
      REFERENCES `sportswearshop1`.`product_category` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION;
