ALTER TABLE `users`
	ADD COLUMN `org` varchar(255) NULL DEFAULT 'none' AFTER `job_grade`,
	ADD COLUMN `org_gradeorg` INT NULL DEFAULT 0 AFTER `org`
;

CREATE TABLE `org_gradeorg` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_name` varchar(255) DEFAULT NULL,
	`gradeorg` int(11) NOT NULL,
	`name` varchar(255) NOT NULL,
	`label` varchar(255) NOT NULL,
	`skin_male` longtext NOT NULL,
	`skin_female` longtext NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `org_gradeorg` VALUES (1,'none',0,'none','Civil','{}','{}');

CREATE TABLE `org` (
	`name` varchar(50) NOT NULL,
	`label` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `org` VALUES ('none','État');

CREATE TABLE IF NOT EXISTS `transfer` (
  `Sender` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Reciever` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Money Transfer Information';
