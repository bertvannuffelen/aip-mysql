USE `results_db`;
DROP TABLE IF EXISTS `results_table`;
CREATE TABLE `results_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `predicationDate` VARCHAR(255) NOT NULL,
  `readiness`       VARCHAR(255) NOT NULL,
  `suggestion`      VARCHAR(255) NOT NULL,
  `update_time`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

