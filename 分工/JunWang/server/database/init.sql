CREATE TABLE `DEVICE` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IP` char(20) NOT NULL DEFAULT '',
  `PORT` int NOT NULL DEFAULT 0,
  `ISONLINE` boolean NOT NULL,
  `RS` int NULL DEFAULT 0 ,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `FRAGMENT` (
  `ID` int NOT NULL,
  `PATH` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `FILE` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` char(20) NOT NULL DEFAULT '',
  `PATH` char(60) NOT NULL DEFAULT '',
  `ATTRIBUTE` char(10) NOT NULL DEFAULT '',
  `TIME` char(10) NOT NULL DEFAULT '',
  `NOA` int NOT NULL DEFAULT 1,
  `ISFOLDER` boolean NOT NULL DEFAULT false,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `REQUEST` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TYPE` int NOT NULL DEFAULT 0,
  `FRAGMENTID` int NOT NULL DEFAULT 0,
  `DEVICEID` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `USER` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` char(20) NOT NULL UNIQUE DEFAULT '',
  `PASSWD` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE UNIQUE INDEX `idx_FILE_PATH_NAME`  ON `DFS`.`FILE` (PATH, NAME) COMMENT '' ALGORITHM DEFAULT LOCK DEFAULT;

CREATE UNIQUE INDEX `idx_USER_NAME`  ON `DFS`.`USER` (NAME) COMMENT '' ALGORITHM DEFAULT LOCK DEFAULT;

INSERT INTO `FILE` VALUES (9, '1.txt', 'TIM/hello/', 'rw-r--r--', '20170420', 5, true);

INSERT INTO `FILE` VALUES (10, '2.txt', 'TIM/hello/', 'rw-r--r--', '20170421', 3, true);

INSERT INTO `FILE` VALUES (11, '3', 'TIM/hello/', 'rwxr-xr-x', '20170421', 5, true);

INSERT INTO `FILE` VALUES (12, '4.txt', 'TIM/hi/', 'rw-r--r--', '20170421', 5, true);

INSERT INTO `FILE` VALUES (1, 'TIM', '/', 'rwxrwxrwx', '20170419', 0, false);

INSERT INTO `FILE` VALUES (2, 'hi', 'TIM/', 'rwxrwxrwx', '20170419', 0, false);

INSERT INTO `FILE` VALUES (3, 'hello', 'TIM/', 'rwxrwxrwx', '20170419', 0, false);

INSERT INTO FRAGMENT VALUES (90, 'andy/');

INSERT INTO FRAGMENT VALUES (91, 'tom/');

INSERT INTO FRAGMENT VALUES (92, 'jerry/');

INSERT INTO FRAGMENT VALUES (100, 'simi/');

INSERT INTO `DEVICE` VALUES (1, '1.1.1.1', 2080, true, 10);

INSERT INTO `DEVICE` VALUES (3, '1.2.3.4', 2111, false, 20);

INSERT INTO `DEVICE` VALUES (5, '8.8.8.9', 2560, false, 21);

INSERT INTO `DEVICE` VALUES (9, '11.12.13.14', 2480, true, 22);

INSERT INTO `DEVICE` VALUES (11, '11.87.13.33', 5556, true, 30);

INSERT INTO `DEVICE` VALUES (15, '121.37.233.322', 5012, true, 40);

INSERT INTO `REQUEST` VALUES (1, 1, 90, 3);

INSERT INTO `REQUEST` VALUES (4, 1, 91, 3);

INSERT INTO `REQUEST` VALUES (2, 2, 91, 5);

INSERT INTO `REQUEST` VALUES (3, 3, 100, 11);

INSERT INTO `USER` VALUES (1, 'xixi', '123456');

INSERT INTO `USER` VALUES (2, 'haha', '888888');

INSERT INTO `USER` VALUES (3, 'huhu', '520520');