ALTER TABLE `enrtech`.`common_code` 
CHANGE COLUMN `grop_id` `grop_id` VARCHAR(20) NOT NULL COMMENT '그룹코드' ,
CHANGE COLUMN `code` `code` VARCHAR(20) NOT NULL COMMENT '코드' ;
