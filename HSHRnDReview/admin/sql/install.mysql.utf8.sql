CREATE TABLE IF NOT EXISTS `#__hshrndreview_projects` (
    `hshrndreview_project_id`      INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name`                         VARCHAR(255)     NOT NULL,
    `slug`                         varchar(50)      NOT NULL,
    `owner`	                       INT(11)          ,
    `project_type`                 VARCHAR(255)     NOT NULL,
    `startDate`                    DATETIME         NOT NULL default '0000-00-00 00:00:00',

    `enabled`                      TINYINT(1)       NOT NULL DEFAULT '1',
    `ordering`                     BIGINT(20) UNSIGNED NOT NULL,
    `created_on`                   DATETIME         NOT NULL default '0000-00-00 00:00:00',
    `created_by`                   INT(11)          NOT NULL DEFAULT 0,
    `modified_on`                  DATETIME         NOT NULL DEFAULT '0000-00-00 00:00:00',
    `modified_by`                  INT(11)          NOT NULL DEFAULT 0,
    `locked_on`                    DATETIME         NOT NULL DEFAULT '0000-00-00 00:00:00',
    `locked_by`                    INT(11)          NOT NULL DEFAULT 0,
    `hits`                         BIGINT(20) UNSIGNED NOT NULL default '0',
    PRIMARY KEY (`hshrndreview_project_id`),
    KEY `idx_locked` (`locked_by`),
    KEY `idx_enabled` (`enabled`)
)
    ENGINE=InnoDB DEFAULT COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__hshrndreview_statuses` (
	`hshrndreview_status_id`        INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,	
    `hshrndreview_project_id`       INT(11) UNSIGNED NOT NULL,

    `objective`                     mediumtext NOT NULL,
    `objectiveChanged`              int(11),

    `responsible`                   varchar(100) NOT NULL,
    `responsibleChanged`            int(11),

    `estimatedProjectCosts`         double NOT NULL,
    `estimatedProjectCostsChanged`  int(11),

    `projectStatus`                 varchar(50) NOT NULL,
    `projectStatusChanged`          int(11),

    `projectDuration`               int(11) NOT NULL,
    `projectDurationChanged`        int(11),

    `msURSReleaseDate`              date NOT NULL,
    `msURSReleaseDateChanged`       int(11) NOT NULL,
    `msURSReleasedReached`          int(11) NOT NULL,

    `msFSReleaseDate`               date NOT NULL,
    `msFSReleaseDateChanged`        int(11) NOT NULL,
    `msFSReleasedReached`           int(11) NOT NULL,

    `msExpModelReleaseDate`         date NOT NULL,
    `msExpModelReleaseDateChanged`  int(11) NOT NULL,
    `msExpModelReleasedReached`     int(11) NOT NULL,

    `msPrototypeReleaseDate`        date NOT NULL,
    `msPrototypeReleaseDateChanged` int(11) NOT NULL,
    `msPrototypeReleasedReached`    int(11) NOT NULL,

    `msVolumeProductionDate`        date NOT NULL,
    `msVolumeProductionDateChanged` int(11) NOT NULL,
    `msVolumeProductionReached`     int(11) NOT NULL,

    `justificationForAChange`       mediumtext,

    `isMostCurrent`                 int(11) DEFAULT 0,

    `enabled`                       TINYINT(1)       NOT NULL DEFAULT '1',
    `ordering`                      BIGINT(20) UNSIGNED NOT NULL,
    `created_on`                    DATETIME         NOT NULL default '0000-00-00 00:00:00',
    `created_by`                    INT(11)          NOT NULL DEFAULT 0,
    `modified_on`                   DATETIME         NOT NULL DEFAULT '0000-00-00 00:00:00',
    `modified_by`                   INT(11)          NOT NULL DEFAULT 0,
    `locked_on`                     DATETIME         NOT NULL DEFAULT '0000-00-00 00:00:00',
    `locked_by`                     INT(11)          NOT NULL DEFAULT 0,
    `hits`                          BIGINT(20) UNSIGNED NOT NULL default '0',
    PRIMARY KEY (`hshrndreview_status_id`),
    KEY `idx_locked` (`locked_by`),
    KEY `idx_enabled` (`enabled`)
)
    ENGINE=InnoDB DEFAULT COLLATE = utf8_general_ci;



INSERT INTO `#__hshrndreview_projects` (`hshrndreview_project_id`, `name`, `slug`, `owner`, `project_type`, `startDate`, `enabled`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `hits`) VALUES
(1, 'Project 1', 'prj1', NULL, 'Development', '2016-03-08 00:00:00', 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'Project 2', 'prj2', NULL, 'Development', '2016-03-01 00:00:00', 1, 0, '2016-03-04 18:58:38', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

INSERT INTO `#__hshrndreview_statuses` (`hshrndreview_status_id`, `hshrndreview_project_id`, `objective`, `objectiveChanged`, `responsible`, `responsibleChanged`, `estimatedProjectCosts`, `estimatedProjectCostsChanged`, `projectStatus`, `projectStatusChanged`, `projectDuration`, `projectDurationChanged`, `msURSReleaseDate`, `msURSReleaseDateChanged`, `msURSReleasedReached`, `msFSReleaseDate`, `msFSReleaseDateChanged`, `msFSReleasedReached`, `msExpModelReleaseDate`, `msExpModelReleaseDateChanged`, `msExpModelReleasedReached`, `msPrototypeReleaseDate`, `msPrototypeReleaseDateChanged`, `msPrototypeReleasedReached`, `msVolumeProductionDate`, `msVolumeProductionDateChanged`, `msVolumeProductionReached`, `justificationForAChange`, `isMostCurrent`, `enabled`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `hits`) VALUES                   
(1, 1, "Objective Prj 1", 0, "Jens Kowal", 0, 100000, 0, "Active", 0, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 0, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(2, 1, "Objective Prj 1 after first update!", 0, "Jens Kowal", 0, 100000, 0, "Active", 0, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 0, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(3, 1, "Objective Prj 1 after second update!", 0, "Jens Kowal", 0, 100000, 0, "Active", 0, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 1, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(4, 2, "Objective Prj 2", 0, "Jörg Breitenstein", 0, 100000, 0, "Active", 0, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 0, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(5, 2, "Objective Prj 2 after first update!", 0, "Jörg Breitenstein", 0, 100000, 0, "OnHold", 1, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 0, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(6, 2, "Objective Prj 2 after second update!", 0, "Jörg Breitenstein", 0, 100000, 0, "Active", 0, 1000, 0, '2016-03-08 00:00:00', 0, 0, '2016-03-10 00:00:00', 0, 0, '2016-03-12 00:00:00', 0, 0, '2016-03-15 00:00:00', 0, 0, '2016-03-20 00:00:00', 0, 0, "", 1, 1, 0, '2016-03-04 18:58:08', 126, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);





