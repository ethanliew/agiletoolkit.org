ALTER TABLE `content` CHANGE `id` `id` int(11) NULL  auto_increment PRIMARY KEY;
CREATE TABLE `purchase` (id INT);
ALTER TABLE `purchase` CHANGE `id` `id` int(11) NULL  auto_increment PRIMARY KEY;
CREATE TABLE `vote` (id INT);
ALTER TABLE `vote` CHANGE `id` `id` int(11) NULL  auto_increment PRIMARY KEY;
ALTER TABLE `content` ADD `name` varchar(255) NULL DEFAULT NULL  AFTER `id`;
ALTER TABLE `content` ADD `user_id` int NULL DEFAULT NULL  AFTER `name`;
ALTER TABLE `content` ADD `type` varchar(255) NULL DEFAULT NULL  AFTER `user_id`;
ALTER TABLE `content` MODIFY COLUMN `type` varchar(255) DEFAULT NULL AFTER `id`;
ALTER TABLE `content` ADD `is_paid` bool NULL DEFAULT NULL  AFTER `user_id`;
ALTER TABLE `content` ADD `rep` int NULL DEFAULT NULL  AFTER `is_paid`;
ALTER TABLE `vote` ADD `voter_id` int NULL DEFAULT NULL  AFTER `id`;
ALTER TABLE `vote` ADD `content_id` int NULL DEFAULT NULL  AFTER `id`;
ALTER TABLE `vote` ADD `content_owner_id` int NULL DEFAULT NULL  AFTER `voter_id`;
ALTER TABLE `vote` ADD `weight` int NULL DEFAULT NULL  AFTER `content_owner_id`;
ALTER TABLE `purchase` CHANGE `id` `id` int(11) NOT NULL;
ALTER TABLE `purchase` ADD `type` varchar(255) NULL DEFAULT NULL  AFTER `id`;
ALTER TABLE `purchase` ADD `user_id` int NULL DEFAULT NULL  AFTER `type`;
ALTER TABLE `purchase` ADD `conent_id` int NULL DEFAULT NULL  AFTER `user_id`;
ALTER TABLE `purchase` ADD `is_paid` bool NULL DEFAULT NULL  AFTER `conent_id`;
ALTER TABLE `purchase` ADD `domain` varchar(255) NULL DEFAULT NULL  AFTER `is_paid`;
ALTER TABLE `purchase` ADD `expires_dts` datetime NULL DEFAULT NULL  AFTER `domain`;
ALTER TABLE `purchase` CHANGE `id` `id` int(11) NOT NULL  auto_increment;
ALTER TABLE `purchase` CHANGE `conent_id` `content_id` int(11) NULL DEFAULT NULL;
ALTER TABLE `purchase` ADD `is_valid` bool NULL DEFAULT NULL  AFTER `expires_dts`;
ALTER TABLE `purchase` MODIFY COLUMN `is_valid` tinyint(1) DEFAULT NULL AFTER `is_paid`;
ALTER TABLE `purchase` DROP `is_valid`;
RENAME TABLE `atk_addon` TO `addon`;
ALTER TABLE `addon` DROP FOREIGN KEY `fk_atk_addon_atk_user1`;
ALTER TABLE `addon` DROP INDEX `fk_atk_addon_atk_user1`;
ALTER TABLE `addon` CHANGE `atk_user_id` `user_id` int(11) NOT NULL;
ALTER TABLE `addon` DROP `user_id`;
ALTER TABLE `addon` DROP `name`;
ALTER TABLE `addon` DROP `created_dts`;
ALTER TABLE `addon` DROP `expires_dts`;
ALTER TABLE `addon` DROP `cost`;
ALTER TABLE `addon` DROP `paypal`;
ALTER TABLE `addon` ADD `version` varchar(255) NULL DEFAULT NULL  AFTER `homepage_url`;
DELETE FROM `addon`;
ALTER TABLE `addon` AUTO_INCREMENT = 1;
ALTER TABLE `addon` CHANGE `id` `id` int(11) NOT NULL;
ALTER TABLE `user` ADD `name` varchar(255) NULL DEFAULT NULL  AFTER `email_survey`;
ALTER TABLE `user` MODIFY COLUMN `name` varchar(255) DEFAULT NULL AFTER `id`;
update user set name=full_name;

