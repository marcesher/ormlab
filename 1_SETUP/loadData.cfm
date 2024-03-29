<cfdump var="#application#">
<cfquery name="createDatabase">
	
drop database if exists Events;
create database Events;

DROP TABLE IF EXISTS `events`.`administrator`;
CREATE TABLE  `events`.`administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Administratorname` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `ModifiedBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_1` (`ModifiedBy`),
  CONSTRAINT `FK_user_1` FOREIGN KEY (`ModifiedBy`) REFERENCES `administrator` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `events`.`event`;
CREATE TABLE  `events`.`event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EventName` varchar(100) NOT NULL,
  `EventDate` datetime NOT NULL,
  `IsActive` bit(1) NOT NULL DEFAULT b'1',
  `ModifiedBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `events`.`attendee`;
CREATE TABLE  `events`.`attendee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Company` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `events`.`j_events_attendees`;
CREATE TABLE  `events`.`j_events_attendees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EventID` int(10) unsigned NOT NULL,
  `AttendeeID` int(10) unsigned NOT NULL,
  `IsVIP` bit(1) DEFAULT b'0',
  `SignupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `events`.`eventcomment` ;
CREATE TABLE  `events`.`eventcomment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Comment` varchar(8000) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `IsVisible` bit(1) NOT NULL DEFAULT b'1',
  `EventID` int(10) unsigned NOT NULL,
  `AttendeeID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
</cfquery>

