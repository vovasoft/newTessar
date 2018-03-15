
use db1;


CREATE TABLE user (
  id int PRIMARY KEY auto_increment,
  name varchar(20) NOT NULL,
  passwd varchar(255) NOT NULL
);

create TABLE AdFb
(id int PRIMARY KEY auto_increment
,date_start DATE
,date_stop DATE
,account_currency VARCHAR (64)
,account_name VARCHAR (64)
,ad_id VARCHAR (64)
,ad_name VARCHAR (64)
,adset_id VARCHAR (64)
,adset_name VARCHAR (64)
,campaign_id VARCHAR (64)
,campaign_name VARCHAR (64)
,clicks VARCHAR (64)
,ctr VARCHAR (64)
,impressions VARCHAR (64)
,spend VARCHAR (64)
,total_action_value VARCHAR (64)
);

create TABLE ThreeNumDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddFirstPayNum INT
,activePayNum INT
,newAddPayRate FLOAT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create TABLE ThreeNumWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddFirstPayNum INT
,activePayNum INT
,newAddPayRate FLOAT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create TABLE ThreeNumMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddFirstPayNum INT
,activePayNum INT
,newAddPayRate FLOAT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);



create TABLE PayMentDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);
--
create TABLE PayMentWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);

create TABLE PayMentMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gId VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);


create table NewAddDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);


create table NewAddWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);


create table NewAddMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create table StayDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (220)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create table StayWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cId VARCHAR (128)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (128)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create table StayMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cID VARCHAR (64)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (64)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);


create table StayPayDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cID VARCHAR (64)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (220)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create table StayPayWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cID VARCHAR (64)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (128)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);

create table StayPayMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,mainId VARCHAR (64)
,cID VARCHAR (64)
,gID VARCHAR (64)
,enter VARCHAR (128) 
,newAddNum INT
,stayList VARCHAR (64)
,other1 VARCHAR(128)
,other2 VARCHAR(128)
,other3 VARCHAR(128)
,other4 VARCHAR(128)
);


creat table channellist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
,fathername VARCHAR (64)
);

create table gamelist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
);

create table serverlist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
);


create table ChannelFactory
(id int PRIMARY KEY auto_increment
,cid VARCHAR (32)
,pcid VARCHAR (32)
,img VARCHAR (64)
,des VARCHAR (256)
,tags VARCHAR (128)
);
 


create table ChannelIndex
(id int PRIMARY KEY auto_increment
,mainId VARCHAR (128)
,cid VARCHAR (128)
,index subcid (cid(128))  
)




create TABLE ChannelGames
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
,prefix VARCHAR (64)
,lang VARCHAR (64)
,other1 VARCHAR (64)
,other2 VARCHAR (64)
);

INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (1,'生死狙击EN','bloodstrike','en');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (2,'生死狙击BR','bloodstrike','pt');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (3,'火影','naruto','pt');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (4,'龙珠','dragonball','pt');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (5,'死神','bleach','pt');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (6,'魔力学堂','magiccampus','pt');
INSERT INTO `ChannelGames` (`id`,`name`,`prefix`,`lang`) VALUES (7,'ZULA','zula','pt');
;

create TABLE EntryDefine
(id int PRIMARY KEY auto_increment
,entryType VARCHAR (64)
,game VARCHAR (64)
,name VARCHAR (64)
,appid VARCHAR (64)
,des VARCHAR (64)
,other2 VARCHAR (64)
);

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','blood-strike','681463031893735');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikex','1416792551698765');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikego','212450792556584');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikefps','1102871116484323');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstriekai','331402667278052');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikenewserver','256656918030539');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikeasia','305318219850124');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikesa','291511197902404');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikeamerica','1075095585861680');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikebrazil','1118734348252067');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikelatino','1089991781080490');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikeanglo','177181686055510');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikefire','398014940550867');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikeglobal','1755555277991093');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击EN','bloodstrikepacific','1673751969609835');


INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','blood-strike','681463031893735');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikex','1416792551698765');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikego','212450792556584');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikefps','1102871116484323');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstriekai','331402667278052');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikenewserver','256656918030539');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikeasia','305318219850124');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikesa','291511197902404');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikeamerica','1075095585861680');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikebrazil','1118734348252067');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikelatino','1089991781080490');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikeanglo','177181686055510');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikefire','398014940550867');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikeglobal','1755555277991093');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','生死狙击BR','bloodstrikepacific','1673751969609835');

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','火影','narutoxportugal','162635594186757');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','龙珠','dragon-ball','1726032797701910');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','死神','bleachx','1833984200147657');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`appid`) VALUES ('Facebook APP','魔力学堂','magiccampus','129832190945624');


INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击EN','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击EN','exmoxUser','渠道着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击EN','firenew','firenew');

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','nv1','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','exmoxUser','渠道着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','index','index');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','index2','index2');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','<null>','<null>');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','fire','fire');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','firenew','firenew');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','minilp','minilp');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','miniclient','miniclient');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','hit','hit');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','生死狙击BR','nvpt','nvpt');


INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','火影','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','火影','exmoxUser','渠道着陆页');

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','龙珠','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','龙珠','exmoxUser','渠道着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','龙珠','newUserCasa','渠道着陆页casa');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','龙珠','newUserRecanto','渠道着陆页recanto');




INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','死神','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','死神','exmoxUser','渠道着陆页');

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','魔力学堂','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','魔力学堂','exmoxUser','渠道着陆页');

INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','ZULA','newuser','通用着陆页');
INSERT INTO `EntryDefine` (`entryType`,`game`,`name`,`des`) VALUES ('Landing Page','ZULA','exmoxUser','渠道着陆页');

create TABLE MainChannel
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
,prefix VARCHAR (64)
,other1 VARCHAR (64)
,other2 VARCHAR (64)
);

INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('Facebook广告投放','fbad');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('Google广告投放','ggad');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('邀请渠道','invite');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('红人、工会、战队推广','linkme');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('社区（fb、ytb、twi等）推广','community');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('论坛推广','forum');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('网盟推广','affiliate');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('游戏联运','copublish');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('广告直客','adpartner');
INSERT INTO `MainChannel` (`name`,`prefix`) VALUES ('线上媒体','onlinemedia');

create TABLE ChannelData
(id int PRIMARY KEY auto_increment
,game VARCHAR (64)
,entry VARCHAR (64)
,define VARCHAR (64)
,mainChannel VARCHAR (64)
,url VARCHAR (128)
,creator VARCHAR (64)
,createTime VARCHAR (64)
);


-- 好友邀请	邀请渠道
-- Exmox网盟	网盟推广
-- Facebook其他	社区（fb、ytb、twi等）推广
-- Facebook社交推广	社区（fb、ytb、twi等）推广
-- Facebook社区分享	社区（fb、ytb、twi等）推广
-- Facebook社区自然量	社区（fb、ytb、twi等）推广
-- Twitter推广	社区（fb、ytb、twi等）推广
-- GooglePlus推广	社区（fb、ytb、twi等）推广
-- 论坛推广	论坛推广
-- YouTube红人推广	红人、工会、战队推广
-- RaidCall推广	红人、工会、战队推广
-- Jogosdetiro网站推广	广告直客
-- ClickJogos推广	广告直客
-- Boacompra推广	广告直客
-- GoogleAD	Google广告投放
-- Facebook AD	Facebook广告投放
-- Facebook自然量	（请保留）
-- 微端	（请保留）
-- 官网	（请保留）



-- 渠道ID
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike_006_006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike_015_015');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike_015_015old');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike13-18_015_015');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike13-18chennormal_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike13-18chennormal_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike19-24-17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike1924chennormal_05_05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike1924chennormal_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrike2530-17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_01_01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_013_013');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_03_03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_04_04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_05_05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_07_07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_09_09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_11_11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_12_12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_13_13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_14_14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_15_15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_16_16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_17_17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_18_18');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_19_19');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_20_20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318_21_21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318lookalike_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318small_1_1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318small_3_3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318zhengchang_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1318zhengchang_11_11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_01_01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_013_013');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_04_04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_05_05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_07_07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_08_08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_09_09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_11_11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_12_12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_13_13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_14_14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_15_15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_16_16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_17_17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_18_18');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_19_19');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_20_20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_21_21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924_22_22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924small_1_1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924small_2_2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924zhengchang_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen1924zhengchang_16_16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_01_01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_013_013');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_04_04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_05_05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_07_07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_08_08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_09_09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_11_11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_12_12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_13_13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_14_14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_15_15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_16_16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530_17_17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechen2530zhengchang_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechenzhengchang1924_09_09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikechenzhengchang2530_12_12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikefriends1318_015_015');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikefriends1924_017_017');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikefufei1318_015_015');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikefufei1924_017_017');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikelaoyonghu1318_011_011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikelaoyonghu1924_011_011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_facebook-bloodstrikelaoyonghu2530_011_011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000110000000_fb-bsc1318zc_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000120000000_facebook-bloodstrike_017_017');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000211000000_facebook-bloodstrike_006_006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000211010003_facebook-bloodstrike_004_004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000211100003_facebook-bloodstrike_004_004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000212100003_facebook-bloodstrike_001_001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000221100003_facebook-bloodstrike_004_004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003000222100003_facebook-bloodstrike_004_004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_0003001100000000_frombloodstrike');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bs_015_015');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc1318zc_10_10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc1619_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc1924zc_09_09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_01_01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_02_02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_03_03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_04_04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_05_05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsc619_06_06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bsclookalike619_04_04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fb-bszc_010_010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m001_n000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_m020_1006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_cpa');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymda_LAL9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','_fbad_ymxi_LAL9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','1|1924|CPC|Blood Strike-[brazil] 17-[fps game]');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','a10g_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','aaaa_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','aaaaa&amp;subid=bbb');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','aaaaaaaaa3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','ad');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adc5_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0001_0002https://adobeid.services.adobe.com/reset/pt_BR/TXMS29XWBT4VNHA4PKBZX00AP0');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0001_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0003_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_0005_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','adca_000567_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','agam_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','ANAA_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','angel_naruto_xcloud');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Anglo');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','bad_l180_lv10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','bgl_featured');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Biaa_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','biel_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','blea_foru_fion');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','blog_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','BLOG_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Blood_Strike_america');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','blood_strike_global');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Blood_Strike_latino');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','BOAC_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','bras_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','BSBS_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Ches_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','Clan_Senj_1024');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CLAT_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CLAT_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CLAT_0001_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CLAT_0001_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CLAT_0001_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','clay_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','clay_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','comm_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','comm_0001_0000https_//apps.facebook.com/blood-strike/?fb_source=comm_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','COMM_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','CORP_DRAG_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','cret_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','DB8M_DRAG_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','DBIS_LIFE_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','DBLL_OTAK_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','donn_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','donn_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','EN:FBBS_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','EN:GGAD_OLDA_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','EN:itao_0001_000mm');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fad_side_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fb_ads_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ nbah_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_00l3_pv10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_00l3_shi1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_00l3_shi2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_5old_manh');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_5old_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_5p00_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_5p01_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bpph_l7s4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bpph_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bpph_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsAR_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsAR_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsEG_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsEG_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsID_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsID_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsin_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsin_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsMY_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsMY_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsph_l7v3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsph_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsph_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsTH_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsTH_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsTR_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsTR_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsVN_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_bsVN_nvs4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_cana_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_cana_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_cons_game');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_educ_high');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_educ_lowl');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_educ_midd');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_eng2_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_enga_game');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENGT_nsp1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENGT_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENGT_sip1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENmi_nsp1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENmi_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENmi_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ENmi_sip1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_even_crea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fami_movi');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fast_food');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p107');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p108');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_po03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbac_po13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p107');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p108');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbad_p208');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p107');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p108');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p207');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbaf_p208');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbag_p205');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p107');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_v001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbah_v002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p111');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p205');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p209');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p231');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_p233');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbai_v203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbak_po01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbak_po03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbak_po08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbak_po12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbak_po13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p040');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p041');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p042');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p043');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p100');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p111');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbal_po13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fban_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p107');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p108');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p111');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p113');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p115');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p116');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p118');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p207');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_p208');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_po03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_po08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_po12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbap_po13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfj_pf26');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfj_pf27');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p021');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p046');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p047');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p048');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p053');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p054');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p055');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p056');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p057');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p058');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p059');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p060');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p061');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p062');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p064');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p065');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p066');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p070');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p071');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p073');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p074');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p075');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p076');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p080');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p081');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p111');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p113');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p122');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p146');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p147');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p148');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p153');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p154');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p155');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p156');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p157');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p160');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p161');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p162');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p164');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p165');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p166');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p170');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p171');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p173');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p176');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p179');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p181');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p213');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p221');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p246');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p247');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p248');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p253');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p254');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p255');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p258');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p260');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p262');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p264');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p265');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p266');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p279');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fbfl_p2q6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ffff_blue');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ffff_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pf66');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi61');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi62');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi63');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi64');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi67');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pi68');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpla_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpsM_EXv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fpsU_SAv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fuai_p224');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fual_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fual_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fual_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fual_p007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_fual_p017');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p141');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p144');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p145');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p146');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p241');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p243');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p244');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p245');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_p246');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v111');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v142');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v143');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gbag_v212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_gui0_chu0');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p120');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p121');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p122');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p130');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p134');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p213');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p215');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p220');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p221');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p222');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p230');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p2c9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p320');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p321');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p322');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p323');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p324');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p325');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_p327');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pi10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pi11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pi13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pi15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_pic9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_vid1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_vid2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_w005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_w022');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_w320');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_wp01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_wp02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_wp06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbaf_wp08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p130');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p134');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p326');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_p327');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_pi10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_pi11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hbal_pi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_HBff_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_HBff_p011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_HBff_p013');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_HBff_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_HBff_p214');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p205');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p207');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p208');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p304');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p305');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p306');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p308');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p309');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p310');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p311');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_p312');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pi10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pi11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hmaf_pic9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p209');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p304');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p305');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p310');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_p312');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_pi10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_pi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_pic4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hsaf_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p122');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p213');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p215');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p217');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p2c8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p320');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_p322');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pi11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pi14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pi15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pi16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huaf_pic9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_hual_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huan_v201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_huan_vid1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_acti');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_arts');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_cars');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_Comp');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_desi');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_fami');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_fitn');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_fps0');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_game');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_live');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_onli');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_role');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_Shop');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_spor');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_inte_trav');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p030');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p036');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p037');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p038');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p040');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p134');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p135');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p140');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p141');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p142');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p235');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p236');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p240');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p241');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_p242');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_v102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbai_v202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p320');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p322');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p323');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p324');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p325');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbal_p327');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbfl_vf11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jbfl_vf12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p108');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p205');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_jmai_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p036');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p113');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p115');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p117');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p118');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p135');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p136');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p137');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p213');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p215');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p216');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p218');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p219');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p223');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p237');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p2c8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p2c9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p301');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p303');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p304');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p305');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_p320');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_v101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juai_v201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p106');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p211');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_juax_p310');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_kang_long');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_l180_lv10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf65');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf66');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf67');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf68');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf69');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf70');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf71');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBl_pf72');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBR_3v10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laBR_lf03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laME_3sv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_laUS_3sv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p120');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p121');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p122');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p123');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p124');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p132');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p221');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p222');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p223');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p224');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lbaf_p232');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_liBR_3v10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_liME_3sv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_liUS_3sv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_blue');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_bslg');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_lg01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_puid');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_look_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_lpBR_3v10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p121');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p124');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p125');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p206');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p207');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p214');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p216');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p226');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_luaf_p236');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_last');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_like');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_shi1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_shi2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_tu02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi24');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi25');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi26');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi27');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vi30');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vid8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m000_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m001_n000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m001_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00E_like');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00E_old1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00E_old2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00E_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00l_pf70');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00l_pf71');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00l_pf72');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m00l_vf25');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g0');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_00g9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_IE00');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_IEg2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_IEg5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_m010_IEg7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_boss');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_funn');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_pic1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_pict');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_team');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vfun');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi33');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi34');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi35');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi36');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi37');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mage_vi38');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEl3_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEXO_nsp1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEXO_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEXO_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEXO_sip1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_MEXO_sip2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mg06_last');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_2009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_4009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_6009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_8009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t0s1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t0s3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t0s4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t0s6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi0u_t0s7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi1f_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi1f_0101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi1f_01IE');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mi1f_IE00');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','FBAD_minc_0011');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mnew_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mobi_leph');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mpor_vi22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_msao_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mui0_3fpy');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mui0_t001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t007');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t008');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_t009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_muid_ts09');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvau_dien');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvid_last');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvl3_kang');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvl3_port');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvl3_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvl7_blue');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_mvl7_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_gn02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_gn03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_gn05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_gn12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_In16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_vn03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_vn04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_vn05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_vn12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_xv01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_xx01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_xx02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_XX03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_xx05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N1MB_xx06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_gn16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_In16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_vn16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_x03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_xv01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_xx01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_xx02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_xx05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N2MB_xx06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_In04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_In05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_vn03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_xx01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_xx02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_N3MB_xx05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p040');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p041');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p046');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p140');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p141');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p142');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p143');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p150');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p169');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p231');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p241');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_p269');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbai_v203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbaj_pf04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbaj_pf35');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbaj_pf36');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_bf01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p036');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p037');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p050');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p051');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p067');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p068');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p135');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p136');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p137');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p140');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p142');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p148');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p235');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p236');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p241');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p242');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p252');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbal_p267');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p204');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p212');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbam_p231');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p012');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p112');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbav_p231');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbfj_pf37');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbfj_pf38');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbfl_p101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nbfl_p104');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_new1_vide');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_0006');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_fed1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_fed2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_fed5');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_newi_fed6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_news_pi11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_news_pi12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_news_pi13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_news_pi16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_news_pi17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf18');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf19');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf23');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf24');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf25');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf26');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf27');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf30');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf31');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf32');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NL1J_bf33');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf18');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf19');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bf21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_Bn02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bn05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bn10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bn12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL1_bn16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_NLL2_jn02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_Nll3_Ia10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_Nll3_Ia12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_Nll3_la13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_none_test');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_p202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v002');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v101');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v201');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v202');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nuai_v203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p135');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p136');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p137');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p236');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_nual_p237');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_onli_shi1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_onli_shi2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_onME_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_onUS_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_port_vi22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_port_vid8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiul_iwe4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiul_iwei');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiul_new9');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiul_old3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiul_wei2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiun_ew10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiun_ew11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiuo_ld12');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiuo_ld13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_qiuo_ld14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_rela_marr');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_rela_sing');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p009');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p033');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p109');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbai_p133');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p036');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p037');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p135');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p136');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p137');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p235');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p236');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbal_p237');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbfl_p102');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sbfl_p105');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sdyb_cpaV');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sdyb_cpmV');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_seas_onal');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_6yue');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pi15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pi16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pi17');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pi6n');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic16');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic18');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic6');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_side_pic8');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_slid_p501');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_smal_busi');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p003');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p005');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p010');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p024');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p031');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p110');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p124');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p131');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p203');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p205');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p210');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_suai_p231');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sual_p035');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sual_p037');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_sual_p235');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_unit_plug');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_usao_nsp1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_usao_nsv3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_usao_sip3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_usao_sip4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_USl3_nsv4');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_vide_5p01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','FBAD_webs_dire');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_work_itit');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_work_musi');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_work_poli');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_work_prod');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_work_sale');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_01b1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_01b2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_01s1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_01s2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_03V1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_04L1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_04L2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_11L1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_11L2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_29L1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_29L2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_29V1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_30b1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_30b2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_30b3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_30s1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yang_30s2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yiny_mp07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_yiny_old7');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ymda_cpa');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_ymda_cpaV');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf06');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf07');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf10');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf11');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf20');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf21');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf22');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf31');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf32');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_pf33');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_vf01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbai_vf02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf01');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf02');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf03');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf03]');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf04');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf05');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf08');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf1');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf13');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf13V');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf14');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf15');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf2');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf26');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf27');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf28');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf28https://www.google.com.br/?gws_rd=cr');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf28jogar]');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf30');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbal_pf31');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','fbad_zbaL_pf32');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','facebook');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','facebook_login');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','facebook_login_from_website');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','facebook_login_from_website with error (-100).');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookAD','facebook_login_from_website');

-- facebook社交推广


INSERT into ChannelIndex(`mainId`,`cid`) values('facebookSocial','f');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookSocial','FABB_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookSocial','facc_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookSocial','facc_0001_0000?');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookSocial','facc_0002_0000');

-- facebook社区分享


INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100003160929923_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100003340035090_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100003985208128_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100005310390848_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100005595542282_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100006777013842_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100007369818901_fb_sharea');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityShare','100007881518641_fb_sharea');


-- facebbook社区自然量

INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBB_2016_0103');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_00');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_0000 register');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_0000,3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_0000/registrar');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0001_0000br.hao123.com/?tn=sdkw_inner_hp_09_hao123_br');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000 criar uma conta');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000,');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000.');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000]');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000http://i.maxthon.com/pt-br.htm');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000pt.reimageplus.com/land/slm/index1.php?tracking=imali3');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0002_0000v');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','FBBS_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbcm_igor_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbcm_weli_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbfb_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbpag');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbpage');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbpagee');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','fbpagehttps://apps.facebook.com/blood-strike/?fb_source');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','feed');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','feed_playing');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookCommunityNature','feed}');

-- facebook其他

INSERT into ChannelIndex(`mainId`,`cid`) values('facebookOthers','invite_register');
INSERT into ChannelIndex(`mainId`,`cid`) values('facebookOthers','notification');


-- GooglePlus

INSERT into ChannelIndex(`mainId`,`cid`) values('GooglePlus','_0008000100000001_BloodStrikeGplusPage');
INSERT into ChannelIndex(`mainId`,`cid`) values('GooglePlus','GP_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GooglePlus','GP_9999_9999');

-- GoogleAD
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_000400');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_bss2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlebsc2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlebsc4');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlebschenz');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlebss1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlebss2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlemextext1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlemextext2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlemextext3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlenmpicture');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110000000_googlenmtext');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010101_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010202_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010303_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010404_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010505_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010606_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010707_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010808_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110010904_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020101_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020202_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020202_googlecrossfire');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlebloodstr');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlebloodstrikenewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlecombatarmsnewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlecrossfirenewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlecs');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlecsnewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlefpsnewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlejogosdetironewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020303_googlepointblanknewlpchen');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020404_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020404_googlefps');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020505_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020505_googlejogodetiroteio');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020606_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020707_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020904');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110020904_googlebloodstrike');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110021004_googlepointblank');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110021104_googlebss1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110021104_googlecombatarms');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030101_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030202_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030303_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030505_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030606_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030606_googlejogosdetiro');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030707_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030707_googlejogosgratis');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030808_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110030808_googlezumbis');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000110031104_googlecombatarms');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlebschena');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlebschenb');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlebschenz');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlebss1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlemextext1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlemextext2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlemextext3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlenmpicture');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000120000000_googlenmtext');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010202_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010303_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010404_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010505_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010606_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010707_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210010808_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040101_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040202_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040303_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040404_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040505_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040606_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040707_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040808_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210040909_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210041010_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210041111_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210050505_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210050606_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_0004000210051111_LegendOnlinegoogle');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','_GGAD_ZUMB_SHOT_googlecombatarms');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD OLDA TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0004_00');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0005_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0006_00');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0006_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_0007_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ARMS_FIRE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BAII_XAKI');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BAIX_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BAIX_AR00');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BALD_GUNS');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BATT_FIEL');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BE00_GONE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TE10');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TE11');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TE12');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX4');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX5');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX7');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_BLEA_TEX9');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_br01_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_br01_ex01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_br01_ph01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_COMB_ARMS');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_CONN_TRAC');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_CROS_FIRE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_CS00_LAUN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_CS00_MAIN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_DRAG_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_DRAG_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_DRAG_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_DRAG_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TE10');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TEX2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TEX4');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TEX7');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENAD_TEX8');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ENG0_MAIN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_FLAS_SITE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_FPS0_MAIN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_FPS0_NAME');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_FPSJ_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_FPSJ_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_GAME_NAME');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_GRAT_JOGO');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_GUER_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_GUER_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_GUER_0010');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_hero_ad04');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_hero_ad88');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_hero_ad99');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_JOGA_CS00');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_JOGO_GRAT');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_JOGO_GUER');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_JOGO_TIRO');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_LB12_P000');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_llll_lplp');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br02');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br03');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br04');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br05');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br06');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_br07');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex02');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex03');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex05');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex06');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex07');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ex12');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph02');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph03');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph05');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph06');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m1br01_ph08');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_m2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_MOVI_KEYS');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_n1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_n1br01_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_n1rm01_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OL5iRaANH4P8KxHYnqULodVyRiVNJLcs0jSzm0NDpEaAhfv8P8HAQDA_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLD');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_carr');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_deti');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_DISP');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_Grat');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_joat');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_jogo');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_jogr');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_joti');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_LAUN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_TEX1]');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_TEX2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_OLDA_tirr');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','ggad_p1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_POIN_BLAN');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX4');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX5');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX6');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX7');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX8');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_PTAD_TEX9');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_REMA_DISP');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_REMA_RKET');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_jn22');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_jns2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nag1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nao1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nao2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nar1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nar2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_nar3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_ndj1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_ndj2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_new1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_pin1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_pin2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_pin3');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_serc_pin4');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_TIRO_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_TIRO_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_TIRO_TEIO');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_UBER_STRI');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_UNDE_FIRE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_WAR0_FACE');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ZULA_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ZULA_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','GGAD_ZUMB_SHOT');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','google');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','googlemextext1');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','googlemextext2');
INSERT into ChannelIndex(`mainId`,`cid`) values('GoogleAD','googlemextext3');

-- YouTube红人

INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_00090001000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_CRUSHER_Gamer');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_facebook_GabiruGamer');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_kevinffarten_Gamer');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtubb');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube_Dooug');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube.');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube]');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube3');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtube7');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtubed');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtubehttps://www.facebook.com/RaidCallBR?sk=app_137541772984354');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtubeJogo de tiro Bloodstrike de FPS online sem baixarBlood strike um jogo de ti');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000_youtubeLucas Gamer');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000000search.coolersearch.com/?affilid=DQhHOsWF0rcAfW6KDEXXmgOP3kj1MI');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000001_BloodStrikeYoutubeInfo');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000001_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100000009_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100007770_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100007870_360');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100007870_jdt');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100008880_youtub');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100008880_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000100008880_youtube]');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110000666_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110006666_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110066666_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110321321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110621321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110661321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000110666666_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000112000000_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000112000000_youtube]');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000113000000_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000114321321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_00090001161321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000117654321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000130000000_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000130008880_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000154321321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000200000002_LegendOnlineYoutubeVideo');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009000754321321_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009100000000007_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009100000000028_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_0009100000000033_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','_1111111111111111_youtube');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','elis_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ELLE_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Ellen_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Ellen_0001_0000[');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Ellen_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0003_0000https://');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0004_0000 login');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0004_0000/login');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0005_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0006_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0007_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0008_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_0009_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_1000_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_3000_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_4000_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YB_8000_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_1000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_1200');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_1400');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_1800');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2300');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2400');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2500');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2700');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_2900');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_3000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_3200');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_3300');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_7000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0000_8000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0007_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0008_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0009_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YT_0016_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','FELI_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ferm_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','fern_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','fran_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','G2A_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','G2AA_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','GAD_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','galo_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','GALO_0005_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Gam7_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Gam7_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','game_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Game_Outr_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','game_outr_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Game_Outro_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Game7_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','gmlc_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Gord_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','GREF_serc_nar1');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Gudz_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','GUIA_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Gust_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','head_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','heni_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','heni_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','henri_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','henri_0033_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','HLFB_2016_0128');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','hnri_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ilha_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ilha_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ilha_0001_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ilha_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','isar_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','isis_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ital_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','itao_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','itao_0001_0000]');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','itao_0001_000mm');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','itao_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','jMmY_NX_BR');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','jogo_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','jogo_0001_0022_serc_nar2');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Joni_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','josh_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','josh_0002_');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','josh_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','josi_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','josi_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','jueg_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Julio_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','July_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','kaka_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','kelv_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','KEVI_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','like_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','lipe_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','lipe_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','lipe_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','LOOP_0006_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','lope_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Luiz_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','maca_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','macc_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MAIC_0004_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MAIC_0004_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MAIC_0004_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MANU_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MANU_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MANU_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','mario_naruto_xcloud');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','marl_0000_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','marl_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Mate_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','max_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','max_001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','maxx_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','maxx_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','mega_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','mrpi_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','mrpi_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MUCA_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MUCA_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','MUCA_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','muca_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','newx_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','newx_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','NILL_0002_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','NILL_0002_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','NING_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','nobr_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','nobr_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ojog_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Onix_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','palo_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','palo_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','palo_0001_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','palo_0001_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','palo_0001_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','parc_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_ANIM_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_Club_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_FB01_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_FB01_0001.com');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_FB01_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_FB01_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_MANU_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PARC_NECK_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PATR_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','patr_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','pauk_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','pinu_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','poki_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0003');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0004');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0006');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0008');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0009');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0010');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0014');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0015');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0001_0018');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','prom_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','PRWB_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','rand_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','rand_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Rayy_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','reac_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','Recanto');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','rena_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','rena_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','request');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','revi_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','revi_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','roma_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','roma_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','SAMU_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','saul_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','saul_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','SILVO_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','skyf_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','slip_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','slip_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','slips_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','slips_0004_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','SPIL_OJOG_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','SPIL_OJOG_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','stux_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','stux_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','taga_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','tati_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','teng_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','thor_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','thor_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','TID3_0003_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','TID3_0003_0002');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','TID3_0003_0005');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ttad_0000_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ttad_br01_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','TTAD_OLDA_TEX1');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','ttad_vide_br01');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','UNDR_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','UNDR_0001_0000https://apps.facebook.com/blood-strike/?fb_source=unde_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vict_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vini_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vini_0001_0001ai');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vrog_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vrog_0001_0000]');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','vrog_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','xand_0001_007');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','xclo_0001_000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','YAMA_0001_0001');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','yout_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('YouTubeStar','yout_0001_0003');

-- Twitter推广

INSERT into ChannelIndex(`mainId`,`cid`) values('Twitter','twet_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Twitter','twitter');

-- RaidCall推广

INSERT into ChannelIndex(`mainId`,`cid`) values('RaidCall','RC_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('RaidCall','_0014000100000000_b');
INSERT into ChannelIndex(`mainId`,`cid`) values('RaidCall','_0014000100000000_bs');
INSERT into ChannelIndex(`mainId`,`cid`) values('RaidCall','_0014000100000001_RCbanner');
INSERT into ChannelIndex(`mainId`,`cid`) values('RaidCall','br_rs');

-- Jogosdetiro网站推广

INSERT into ChannelIndex(`mainId`,`cid`) values('Jogosdetiro','RC_0001_0000');

-- Exmox网盟

INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_0001_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_0002_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_0003_0000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_naru_0531');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_narx_0531');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_narx_0532');
INSERT into ChannelIndex(`mainId`,`cid`) values('Exmox','exmo_narx_0533');

-- Boacompra推广

INSERT into ChannelIndex(`mainId`,`cid`) values('Boacompra','_0030000100000000_boacompra');

-- 好友邀请

INSERT into ChannelIndex(`mainId`,`cid`) values('FromFriend','0101000 1888888001_invite_friends');
INSERT into ChannelIndex(`mainId`,`cid`) values('FromFriend','01010001000000001_invite_friends');
INSERT into ChannelIndex(`mainId`,`cid`) values('FromFriend','01010001000000001_invite_friendsEn');
INSERT into ChannelIndex(`mainId`,`cid`) values('FromFriend','01010001000000001_yaoqing_friends');

-- 微端

INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','mfiniclient');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','minicli');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','miniclient');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','miniclient?');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','miniclient.');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','miniclient.net');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','miniclient]');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','EN:miniclient');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','_0002000000000001_mincFk');
INSERT into ChannelIndex(`mainId`,`cid`) values('MiniCli','_0002000000000001_minclient');

-- 论坛推广

INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024 forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024-forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','__forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005000100000001_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005000480000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005000800000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005001100000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005001200000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005001300000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005003100000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005003300000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005003400000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005003600000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005003800000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005004200000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005004600000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005004700000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005005000000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005005100000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005005400000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005005800000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005006100000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005006500000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005006800000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005006900000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005007200000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005007300000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005007500000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005007600000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_0005100000000000_f');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10000100000024_foum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005 000100000024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010 0000024_for um');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001000000');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000003_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000007_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000011_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010000002');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010000002... my.4399.com/forums-thre...350.html-快照-4399游戏吧');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024 ...tieba.baidu.com/p/3303517380');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_ f o r u m');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_ forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_...');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_f');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_fo');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_for');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_for um');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_foru');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024_forum...');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_1005000100000024-forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100500010000004_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001000024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024_fo...');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024_fo... tieba.baidu.com/p/33... 2014-12-13-');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024_fo...tieba.baidu.com/p/33');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024_fo...tieba.baidu.com/p/33... 2014-12-13-');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_10050001024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_100502030308900100000024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','_5004600000000_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','——1005000100000024——forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024_forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024-forum');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024for um');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','1005000100000024forum');

-- 官网

INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','guanwang');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','xcmember');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','website');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','EN:Passport_AjaxAction_registrar');
INSERT into ChannelIndex(`mainId`,`cid`) values('Forum','EN:website');