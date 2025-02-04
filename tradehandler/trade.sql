#交易表
drop table if exists `TRADE`;
CREATE TABLE `TRADE`(
`ID` INT UNSIGNED AUTO_INCREMENT,
`DATE` INT UNSIGNED default 0,
`TIME` INT UNSIGNED default 0,
`IS_WITHDRAW` INT default 0,
`ORDER_ID` VARCHAR(11),
`BD` CHAR(3),
`STK_CODE` VARCHAR(9),
`STK_BIZ` INT UNSIGNED default 0,
`ORDER_PRICE` VARCHAR(22),
`ORDER_QTY` BIGINT default 0,
`STRATEGY_ID` SMALLINT default 0,
`EXEC_TIME` INT UNSIGNED default 0,
PRIMARY KEY ( `ID` )
);
#交易委托结果表
drop table if exists `TRADE_ORDER`;
CREATE TABLE `TRADE_ORDER`( 
`TRADE_ID` INT UNSIGNED, 
`DATE` INT UNSIGNED default 0, 
`STRATEGY_ID` SMALLINT default 0, 
`ORDER_ID` VARCHAR(11) default '', 
`IS_WITHDRAW` INT default 0, 
`ORDER_TIME` INT UNSIGNED default 0, 
`UPDATE_TIME` INT UNSIGNED default 0, 
`BD` CHAR(3) default '', 
`STK_CODE` VARCHAR(9) default '', 
`STK_BIZ` INT UNSIGNED default 0, 
`ORDER_PRICE` VARCHAR(22) default '', 
`ORDER_QTY` BIGINT default 0, 
`MATCHED_QTY` BIGINT default 0, 
`WITHDRAWN_QTY` BIGINT default 0, 
`MATCHED_AMT` VARCHAR(22) default '', 
`ORDER_STATUS` CHAR(1) default 'N', 
`RAW_ORDER_ID` VARCHAR(11) default '', 
`ERR_CODE` INT default 0, 
`ERR_INFO` VARCHAR(256) default '', 
PRIMARY KEY ( `TRADE_ID` ) 
);

#期权交易表
drop table if exists `OPT_TRADE`;
CREATE TABLE `OPT_TRADE`(
`ID` INT UNSIGNED AUTO_INCREMENT,
`DATE` INT UNSIGNED default 0,
`TIME` INT UNSIGNED default 0,
`IS_WITHDRAW` INT default 0,
`ORDER_ID` VARCHAR(11) default '', 
`BD` CHAR(3) default '', 
`OPT_NUM` VARCHAR(17) default '', 
`STK_BIZ` INT UNSIGNED default 0,
`STK_BIZ_ACTION` INT UNSIGNED default 0,
`ORDER_PRICE` VARCHAR(22) default '',
`ORDER_QTY` BIGINT default 0,
`STRATEGY_ID` SMALLINT default 0,
`EXEC_TIME` INT UNSIGNED default 0,
PRIMARY KEY ( `ID` )
);
#期权交易结果表
drop table if exists `OPT_TRADE_ORDER`;
CREATE TABLE `OPT_TRADE_ORDER`( 
`TRADE_ID` INT UNSIGNED, 
`DATE` INT UNSIGNED default 0, 
`STRATEGY_ID` SMALLINT default 0, 
`ORDER_ID` VARCHAR(11) default '', 
`IS_WITHDRAW` INT default 0, 
`ORDER_TIME` INT UNSIGNED default 0, 
`UPDATE_TIME` INT UNSIGNED default 0, 
`BD` CHAR(3) default '', 
`OPT_NUM` VARCHAR(17) default '', 
`STK_BIZ` INT UNSIGNED default 0,
`STK_BIZ_ACTION` INT UNSIGNED default 0,
`ORDER_PRICE` VARCHAR(22) default '', 
`ORDER_QTY` BIGINT default 0, 
`MATCHED_QTY` BIGINT default 0, 
`WITHDRAWN_QTY` BIGINT default 0, 
`MATCHED_AMT` VARCHAR(22) default '', 
`ORDER_STATUS` CHAR(1) default 'N', 
`RAW_ORDER_ID` VARCHAR(11) default '', 
`ERR_CODE` INT default 0, 
`ERR_INFO` VARCHAR(256) default '', 
PRIMARY KEY ( `TRADE_ID` ) 
);

#错误信息表
drop table if exists `ERROR_INFO`;
CREATE TABLE `ERROR_INFO`(
`ID` INT UNSIGNED AUTO_INCREMENT,
`DATE` INT UNSIGNED default 0,
`TIME` INT UNSIGNED default 0,
`ERR_INFO` VARCHAR(256) default '', 
PRIMARY KEY ( `ID` )
);
