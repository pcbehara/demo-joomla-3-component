CREATE TABLE IF NOT EXISTS `#__demo_look` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
	`add` TINYINT(1) NOT NULL DEFAULT 0,
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`dateofbirth` DATE NOT NULL DEFAULT '0000-00-00',
	`description` TEXT NOT NULL,
	`email` VARCHAR(255) NOT NULL DEFAULT '',
	`image` CHAR(64) NOT NULL DEFAULT '',
	`mobile_phone` VARCHAR(64) NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`not_required` INT(1) NOT NULL DEFAULT 0,
	`website` VARCHAR(255) NOT NULL DEFAULT '',
	`params` text NOT NULL DEFAULT '',
	`published` TINYINT(3) NOT NULL DEFAULT 1,
	`created_by` INT(10) unsigned NOT NULL DEFAULT 0,
	`modified_by` INT(10) unsigned NOT NULL DEFAULT 0,
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) unsigned NOT NULL DEFAULT 0,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` INT(10) unsigned NOT NULL DEFAULT 1,
	`hits` INT(10) unsigned NOT NULL DEFAULT 0,
	`access` INT(10) unsigned NOT NULL DEFAULT 0,
	`ordering` INT(11) NOT NULL DEFAULT 0,
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_add` (`add`),
	KEY `idx_alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



--
-- Always insure this column rules is large enough for all the access control values.
--
ALTER TABLE `#__assets` CHANGE `rules` `rules` MEDIUMTEXT NOT NULL COMMENT 'JSON encoded access control.';

--
-- Always insure this column name is large enough for long component and view names.
--
ALTER TABLE `#__assets` CHANGE `name` `name` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.';
